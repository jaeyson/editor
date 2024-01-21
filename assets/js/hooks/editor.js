export default Editor = {
  mounted() {
    this.handleEvent("preview", data => {
      const input = data.html_input
      const parser = new DOMParser()
      const html_document =  parser.parseFromString(input, "text/html")
      const elem = html_document.body.firstChild
      const preview = document.getElementById("html-preview")
      preview.innerHTML = ""
      preview.appendChild(elem)
    })
  }
}
