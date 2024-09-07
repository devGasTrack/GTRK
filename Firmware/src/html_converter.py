def format_html(source_file):
    try:
        with open(source_file, 'r') as src:
            with open("../include/index_html.h", "w") as o_src:
                o_src.write("#ifndef _SERVER_HTML_FILE\n")
                o_src.write("#define _SERVER_HTML_FILE\n")
                o_src.write("\n")
                o_src.write("const char *data = \"")
                for line in src:
                    line = line.replace("\\", "\\\\")
                    line = line.replace("\"", "\\\"")
                    line = line.replace('\n', '\\\n')
                    o_src.write(line)
                o_src.write("\";\n")
                o_src.write("#endif // _SERVER_HTML_FILE\n")
        
        print("HTML content successfully formatted and written to index_html.h.")
    
    except FileNotFoundError:
        print(f"Error: The file {source_file} was not found.")
    except IOError as e:
        print(f"Error: An I/O error occurred. {e}")

source_path = '../pages/index.html'
format_html(source_path)
