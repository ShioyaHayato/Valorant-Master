class Reflection {
  String content;
  DateTime date;

  Reflection(this.content, this.date);

  // Get the reflection content
  String getContent() {
    return content;
  }

  // Set the reflection content
  void setContent(String content) {
    this.content = content;
  }

  // Get the reflection date
  DateTime getDate() {
    return date;
  }

  // Set the reflection date
  void setDate(DateTime date) {
    this.date = date;
  }

  // Convert to string
  @override
  String toString() {
    return 'Reflection content: $content, Reflection date: $date';
  }
}
