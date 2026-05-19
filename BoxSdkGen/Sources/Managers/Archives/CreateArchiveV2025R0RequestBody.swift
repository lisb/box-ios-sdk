import Foundation

public class CreateArchiveV2025R0RequestBody: Codable, RawJSONReadable {
    private enum CodingKeys: String, CodingKey {
        case name
        case description
        case storagePolicyId = "storage_policy_id"
    }

    /// Internal backing store for rawData. Used to store raw dictionary data associated with the instance.
    private var _rawData: [String: Any]?

    /// Returns the raw dictionary data associated with the instance. This is a read-only property.
    public var rawData: [String: Any]? {
        return _rawData
    }


    /// The name of the archive.
    public let name: String

    /// The description of the archive.
    public let description: String?

    /// The ID of the storage policy that the archive is assigned to.
    public let storagePolicyId: String?

    /// Initializer for a CreateArchiveV2025R0RequestBody.
    ///
    /// - Parameters:
    ///   - name: The name of the archive.
    ///   - description: The description of the archive.
    ///   - storagePolicyId: The ID of the storage policy that the archive is assigned to.
    public init(name: String, description: String? = nil, storagePolicyId: String? = nil) {
        self.name = name
        self.description = description
        self.storagePolicyId = storagePolicyId
    }

    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        description = try container.decodeIfPresent(String.self, forKey: .description)
        storagePolicyId = try container.decodeIfPresent(String.self, forKey: .storagePolicyId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(storagePolicyId, forKey: .storagePolicyId)
    }

    /// Sets the raw JSON data.
    ///
    /// - Parameters:
    ///   - rawData: A dictionary containing the raw JSON data
    func setRawData(rawData: [String: Any]?) {
        self._rawData = rawData
    }

    /// Gets the raw JSON data
    /// - Returns: The `[String: Any]?`.
    func getRawData() -> [String: Any]? {
        return self._rawData
    }

}
