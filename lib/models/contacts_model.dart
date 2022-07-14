
class SecondaryContact {
    SecondaryContact({
        this.name,
        this.number,
        this.relationship,
    });

    String? name;
    String? number;
    String? relationship;

    factory SecondaryContact.fromJson(Map<String, dynamic> json) => SecondaryContact(
        name: json["name"],
        number: json["number"],
        relationship: json["relationship"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "number": number,
        "relationship": relationship,
    };
}
