import ApolloAPI
import AnimalKingdomAPI

/// A response data object for a `HeightInMeters` fragment
///
/// ```
/// fragment HeightInMeters on Animal {
///   height {
///     meters
///   }
/// }
/// ```
public struct HeightInMeters: AnimalKingdomAPI.SelectionSet, Fragment {
  public let data: ResponseDict
  public init(data: ResponseDict) { self.data = data }

  public static var __parentType: ParentType { .Interface(AnimalKingdomAPI.Animal.self) }
  public static var selections: [Selection] { [
    .field("height", Height.self),
  ] }

  public var height: Height  { data["height"] }

  public struct Height: AnimalKingdomAPI.SelectionSet {
    public let data: ResponseDict
    public init(data: ResponseDict) { self.data = data }

    public static var __parentType: ParentType { .Object(AnimalKingdomAPI.Height.self) }
    public static var selections: [Selection] { [
      .field("meters", type: Int.self),
    ] }

    public var meters: Int { data["meters"] }
  }
}
