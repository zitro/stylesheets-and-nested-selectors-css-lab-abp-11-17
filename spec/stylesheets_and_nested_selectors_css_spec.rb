RSpec.describe "Styling the header and navigation with nested selectors" do

  it 'uses an external stylesheet via a <link> with rel and href attributes' do
    html = load_html("./index.html")

    link_tag = html.search("head link").first
    
    expect(link_tag).to_not be_nil
    expect(link_tag.attr("rel")).to eq("stylesheet")
    expect(link_tag.attr("href")).to eq("style.css")
  end

  it 'sets the header to a height of 100px' do
    css = parse_css_from_file("./style.css")
    header = css["header"]

    expect(header).to_not be_nil
    
    expect(header["height"]).to match(/100\s?px/i)
  end

  it 'sets the bottom-border to 1px solid #cccccc' do
    css = parse_css_from_file("./style.css")
    header = css["header"]

    expect(header).to_not be_nil
    
    expect(header["border-bottom"]).to match(/1px\s?solid\s?#ccc/i)
  end

  it 'floats the nav to the right with a nested selector of "header nav"' do
    css = parse_css_from_file("./style.css")
    header_nav = css["header nav"]

    expect(header_nav).to_not be_nil
    
    expect(header_nav["float"]).to match(/right/i)
  end    

  it 'removes the padding from the nav ul with a nested selector of "nav ul"' do
    css = parse_css_from_file("./style.css")
    nav_ul = css["nav ul"]

    expect(nav_ul).to_not be_nil
    
    expect(nav_ul["padding"]).to match(/0/i)
  end    

  it 'resets the margin for the nav ul to a 40px top margin with a nested selector of "nav ul"' do
    css = parse_css_from_file("./style.css")
    nav_ul = css["nav ul"]

    expect(nav_ul).to_not be_nil
    
    if nav_ul["margin"]
      expect(nav_ul["margin"]).to match(/40px\s?0\s?0\s?0\s?/i)
    else
      expect(nav_ul["margin-top"]).to match(/40px/i)
      expect(nav_ul["margin-left"]).to match(/0/i)
      expect(nav_ul["margin-right"]).to match(/0/i)
      expect(nav_ul["margin-bottom"]).to match(/0/i)
    end
  end


  it 'sets the display of a navigation li to inline with a nested selector of "nav ul li"' do
    css = parse_css_from_file("./style.css")
    nav_ul = css["nav ul li"]

    expect(nav_ul).to_not be_nil

    expect(nav_ul["display"]).to eq("inline")
  end

  it "adds a 10px margin to the right of a nav li with a nested selector of 'nav ul li'" do
    css = parse_css_from_file("./style.css")
    nav_ul = css["nav ul li"]

    expect(nav_ul).to_not be_nil

    if nav_ul["margin"]
      expect(nav_ul["margin"]).to match(/0\s?10\s?px/i)
    else
      expect(nav_ul["margin-right"]).to match(/10\s?px/i)
    end
  end

  it 'styles the navigation links with a nested selector of "nav a"' do
    css = parse_css_from_file("./style.css")
    nav_a = css["nav a"]

    expect(nav_a).to_not be_nil

    expect(nav_a["text-decoration"]).to match(/none/i)      
    expect(nav_a["color"]).to match(/#007bff/i)      
    expect(nav_a["font-size"]).to match(/18\s?px/i)      
  end

  it 'floats the h3 within the header to the left with a nested element selector of header h3' do
    css = parse_css_from_file("./style.css")
    h3_header = css["header h3"]

    expect(h3_header).to_not be_nil

    expect(h3_header["float"]).to match(/left/i)      
  end
  
  it 'makes the font-size of h3 within the header 30px with a nested element selector of header h3' do
    css = parse_css_from_file("./style.css")
    h3_header = css["header h3"]

    expect(h3_header).to_not be_nil

    expect(h3_header["font-size"]).to match(/30\s?px/i)
  end

  it 'styles the link in the header with a nested selected of header h3 a' do
    css = parse_css_from_file("./style.css")
    header_a = css["header h3 a"]

    expect(header_a).to_not be_nil

    expect(header_a["text-decoration"]).to match(/none/i)      
    expect(header_a["color"]).to match(/#868e96/i)         
  end


end