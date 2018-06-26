package edu.isi.sciknowengine.kefed.io.controller;

import edu.isi.sciknowengine.kefed.io.Constants;
import edu.isi.sciknowengine.kefed.io.service.GraphXMLService;
import edu.isi.sciknowengine.kefed.io.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.*;
import java.util.zip.GZIPOutputStream;

@Controller
public class RestController { //implements UserDetailsService {

	@Autowired private UserService userService;
	@Autowired private GraphXMLService graphXMLService;

	//spring will automatically bind value of property
	@Value("${home.location}")
	private String home_location;
	
	//@Autowired private UserRepository repositoryImpl;
		
	@RequestMapping(value="/login")
	public String register(HttpServletRequest request) {
		return "login";
	}
	
	/*@Override
    public CurrentUser loadUserByUsername(String username) throws UsernameNotFoundException {
    	if (repositoryImpl.exists(username)) {
            return new CurrentUser(repositoryImpl.findOne(username));
        }
        throw new UsernameNotFoundException(username);
    }*/

	
	//Old Save with JUST XML
	/*@RequestMapping(value="/save",method=RequestMethod.POST)
	public String Save(@RequestBody String xml) throws Exception {
		graphXMLService.saveXML(xml);
		return "redirect:/kefedAdmin";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public @ResponseBody String Save(@RequestBody Study_Design templateObject) throws Exception {
		graphXMLService.saveTemplate(templateObject);
		return "redirect:/kefedAdmin";
	}
	
	@RequestMapping(value="/load",method=RequestMethod.GET)
	public String load(@RequestParam("id")String ontologyId,HttpServletRequest request) throws Exception {
		String xml = graphXMLService.findXMLById(ontologyId);
		String path = request.getServletContext().getRealPath("/");
	    File file = new File (path +"/static/xmlFile.xml");
		PrintWriter writer = new PrintWriter(file, "UTF-8");
		writer.print(xml);
		writer.close();
		return "kefededitor/index";
	}
	
	
	@PostMapping(value="/getAll")
	public ResponseEntity<?> getAll() throws Exception {
		return ResponseEntity.ok(graphXMLService.getAll());
	}
	
	@PostMapping(value="/delete")
	public String delete(@RequestParam("id")String ontologyId,HttpServletRequest request) {
		graphXMLService.deleteTemplate(ontologyId);
		return "index";
	}
	
	@RequestMapping(value="/getStudyDesign",method=RequestMethod.GET)
	public ResponseEntity<?> getStudyDesign(@RequestParam("id")String id,HttpServletRequest request) throws Exception {
		return ResponseEntity.ok(graphXMLService.getStudyDesign(id));
	}*/

	/**
	 * Servlet implementation class SaveServlet.
	 *
	 * The SaveDialog in Dialogs.js implements the user interface. Editor.saveFile
	 * in Editor.js implements the request to the server. Note that this request
	 * is carried out in a separate iframe in order to allow for the response to
	 * be handled by the browser. (This is required in order to bring up a native
	 * Save dialog and save the file to the local filestyem.) Finally, the code in
	 * this servlet echoes the XML and sends it back to the client with the
	 * required headers (see Content-Disposition in RFC 2183).
	 */
	@PostMapping(value="/save")
	public ResponseEntity<?> save(@RequestParam("filename")String filename,
					 @RequestParam("xml")String xml,
					 HttpServletRequest request) throws UnsupportedEncodingException, IOException {
		if (request.getContentLength() < Constants.MAX_REQUEST_SIZE) {

			if (filename == null)
				filename = "export";

			if (xml != null && xml.length() > 0) {
				String format = request.getParameter("format");

				if (format == null)
					format = "xml";

				if (!filename.toLowerCase().endsWith("." + format))
					filename += "." + format;

				// Decoding is optional (no plain text values allowed)
				if (xml != null && xml.startsWith("%3C")) {
					xml = URLDecoder.decode(xml, "UTF-8");
				}

				if( home_location != null ) {
					File home = new File(home_location);
					if(home.isDirectory())
						try(  PrintWriter out = new PrintWriter( home_location + "/" + filename )  ){
							out.println( xml );
						}
					else
						try(  PrintWriter out = new PrintWriter( filename ) ){
							out.println( xml );
						}
				} else
					try(  PrintWriter out = new PrintWriter( filename ) ){
						out.println( xml );
					}

				return ResponseEntity.ok(xml.getBytes("UTF-8"));

			} else {

				return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(null);

			}

		} else {

			return ResponseEntity.status(HttpStatus.REQUEST_HEADER_FIELDS_TOO_LARGE).body(null);

		}
	}

	@PostMapping(value="/open")
	public ResponseEntity<?> open(HttpServletRequest request) throws IOException {

		request.setCharacterEncoding("UTF-8");

		ByteArrayOutputStream out = new ByteArrayOutputStream();
		/*String encoding = request.getHeader("Accept-Encoding");

		// Supports GZIP content encoding
		if (encoding != null && encoding.indexOf("gzip") >= 0)
		{
			response.setHeader("Content-Encoding", "gzip");
			out = new GZIPOutputStream(out);
		}*/

		PrintWriter writer = new PrintWriter(out);
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<script type=\"text/javascript\">");

		if (request.getContentLength() < Constants.MAX_REQUEST_SIZE)  {
			Map<String, String> post = this.parseMultipartRequest(request);
			if( post.size() == 0 )
				return ResponseEntity.ok("OK");
			String xml = new String(post.get("upfile").getBytes(ENCODING),
					"UTF-8");
			String filename = post.get("filename");

			// Uses JavaScript to load the XML on the client-side
			writer.println("window.parent.openFile.setData(decodeURIComponent('"
					+ encodeURIComponent(xml) + "'), '" + filename + "');");
		}

		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");

		writer.flush();
		writer.close();

		return ResponseEntity.ok(out.toByteArray());
	}

	public void error(PrintWriter w, String key)
	{
		w.println("window.parent.openFile.error(window.parent.mxResources.get('"
				+ key + "'));");
	}

	/**
	 * Encodes the passed String as UTF-8 using an algorithm that's compatible
	 * with JavaScript's <code>encodeURIComponent</code> function. Returns
	 * <code>null</code> if the String is <code>null</code>.
	 *
	 * @param s The String to be encoded
	 * @return the encoded String
	 */
	public String encodeURIComponent(String s)
	{
		String result = null;

		try
		{
			result = URLEncoder.encode(s, "UTF-8").replaceAll("\\+", "%20")
					.replaceAll("\\%21", "!").replaceAll("\\%28", "(")
					.replaceAll("\\%29", ")").replaceAll("\\%7E", "~");
		}

		// This exception should never occur.
		catch (UnsupportedEncodingException e)
		{
			result = s;
		}

		return result;
	}

	///////////////////////////////////////////////////////////////////////
	// Handling of multipart/form-data **** NOT FOR PRODUCTION USE! **** //
	// If you want a production library, we recommend Commons-Fileupload //
	//       https://commons.apache.org/proper/commons-fileupload/       //
	///////////////////////////////////////////////////////////////////////

	/**
	 * Encoding for the multipart/form-data.
	 */
	protected final String ENCODING = "ISO-8859-1";

	/**
	 * Parses the given multipart/form-data request into a map that maps from
	 * names to values. Note that this implementation ignores the file type and
	 * filename and does only return the actual data as the value for the name
	 * of the file input in the form. Returns an empty map if the form does not
	 * contain any multipart/form-data.
	 */
	protected Map<String, String> parseMultipartRequest(
			HttpServletRequest request) throws IOException
	{
		Map<String, String> result = new Hashtable<String, String>();
		String contentType = request.getHeader("Content-Type");

		// Checks if the form is of the correct content type
		if (contentType != null
				&& contentType.indexOf("multipart/form-data") == 0)
		{
			// Extracts the boundary from the header
			int boundaryIndex = contentType.indexOf("boundary=");
			String boundary = "--"
					+ contentType.substring(boundaryIndex + 9).trim();

			// Splits the multipart/form-data into its different parts
			Iterator<String> it = splitFormData(
					readStream(request.getInputStream()), boundary).iterator();

			while (it.hasNext())
			{
				parsePart(it.next(), result);
			}
		}

		return result;
	}

	/**
	 * Parses the values in the given form-data part into the given map. The
	 * value of the name attribute will be used as the name for the data. The
	 * filename will be stored under filename in the given map and the
	 * content-type is ignored in this implementation.
	 */
	protected void parsePart(String part, Map<String, String> into)
	{
		String[] lines = part.split("\r\n");

		if (lines.length > 1)
		{
			// First line contains content-disposition in the following format:
			// form-data; name="upfile"; filename="avatar.jpg"
			String[] tokens = lines[1].split(";");

			// Stores the value of the name attribute for the form-data
			String name = null;

			for (int i = 0; i < tokens.length; i++)
			{
				String tmp = tokens[i];
				int index = tmp.indexOf("=");

				// Checks if the token contains a key=value pair
				if (index >= 0)
				{
					String key = tmp.substring(0, index).trim();
					String value = tmp.substring(index + 2, tmp.length() - 1);

					if (key.equals("name"))
					{
						name = value;
					}
					else
					{
						into.put(key, value);
					}
				}
			}

			// Parses all lines starting from the first empty line
			if (name != null && lines.length > 2)
			{
				boolean active = false;
				StringBuffer value = new StringBuffer();

				for (int i = 2; i < lines.length; i++)
				{
					if (active)
					{
						value.append(lines[i]);
					}
					else if (!active)
					{
						active = lines[i].length() == 0;
					}
				}

				into.put(name, value.toString());
			}
		}
	}

	/**
	 * Returns the parts of the given multipart/form-data.
	 */
	protected List<String> splitFormData(String formData, String boundary)
	{
		List<String> result = new LinkedList<String>();
		int nextBoundary = formData.indexOf(boundary);

		while (nextBoundary >= 0)
		{
			if (nextBoundary > 0)
			{
				result.add(formData.substring(0, nextBoundary));
			}

			formData = formData.substring(nextBoundary + boundary.length());
			nextBoundary = formData.indexOf(boundary);
		}

		return result;
	}

	/**
	 * Reads the complete stream into memory as a String.
	 */
	protected String readStream(InputStream is) throws IOException
	{
		if (is != null)
		{
			StringBuffer buffer = new StringBuffer();
			try
			{
				Reader in = new BufferedReader(new InputStreamReader(is,
						ENCODING));
				int ch;

				while ((ch = in.read()) > -1)
				{
					buffer.append((char) ch);
				}
			}
			finally
			{
				is.close();
			}

			return buffer.toString();
		}
		else
		{
			return "";
		}
	}

}