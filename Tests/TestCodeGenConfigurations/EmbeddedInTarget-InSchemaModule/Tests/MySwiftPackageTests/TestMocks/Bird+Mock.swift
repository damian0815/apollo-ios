// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import MySwiftPackage

extension MyGraphQLSchema.Bird: Mockable {
  public static let __mockFields = MockFields()

  public typealias MockValueCollectionType = Array<Mock<MyGraphQLSchema.Bird>>

  public struct MockFields {
    @Field<Int>("bodyTemperature") public var bodyTemperature
    @Field<String>("favoriteToy") public var favoriteToy
    @Field<MyGraphQLSchema.Height>("height") public var height
    @Field<String>("humanName") public var humanName
    @Field<MyGraphQLSchema.ID>("id") public var id
    @Field<Bool>("laysEggs") public var laysEggs
    @Field<MyGraphQLSchema.Human>("owner") public var owner
    @Field<[MyGraphQLSchema.Animal]>("predators") public var predators
    @Field<GraphQLEnum<MyGraphQLSchema.SkinCovering>>("skinCovering") public var skinCovering
    @Field<String>("species") public var species
    @Field<Double>("wingspan") public var wingspan
  }
}

public extension Mock where O == MyGraphQLSchema.Bird {
  convenience init(
    bodyTemperature: Int? = nil,
    favoriteToy: String? = nil,
    height: Mock<MyGraphQLSchema.Height>? = nil,
    humanName: String? = nil,
    id: MyGraphQLSchema.ID? = nil,
    laysEggs: Bool? = nil,
    owner: Mock<MyGraphQLSchema.Human>? = nil,
    predators: [AnyMock]? = nil,
    skinCovering: GraphQLEnum<MyGraphQLSchema.SkinCovering>? = nil,
    species: String? = nil,
    wingspan: Double? = nil
  ) {
    self.init()
    self.bodyTemperature = bodyTemperature
    self.favoriteToy = favoriteToy
    self.height = height
    self.humanName = humanName
    self.id = id
    self.laysEggs = laysEggs
    self.owner = owner
    self.predators = predators
    self.skinCovering = skinCovering
    self.species = species
    self.wingspan = wingspan
  }
}
