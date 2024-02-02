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

  // Convert to JSON
  Map<String, dynamic> toJson() => {
    'content': content,
    'date': date.toIso8601String(),
  };

  // Factory constructor to create a Reflection object from JSON
  factory Reflection.fromJson(Map<String, dynamic> json) => Reflection(
    json['content'] as String,
    DateTime.parse(json['date'] as String),
  );
}
