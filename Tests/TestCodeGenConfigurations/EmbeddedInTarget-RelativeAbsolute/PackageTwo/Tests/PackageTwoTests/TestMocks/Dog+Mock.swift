// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import PackageTwo

extension MySchemaModule.Dog: Mockable {
  public static let __mockFields = MockFields()

  public typealias MockValueCollectionType = Array<Mock<MySchemaModule.Dog>>

  public struct MockFields {
    @Field<MySchemaModule.CustomDate>("birthdate") public var birthdate
    @Field<Int>("bodyTemperature") public var bodyTemperature
    @Field<String>("favoriteToy") public var favoriteToy
    @Field<MySchemaModule.Height>("height") public var height
    @Field<String>("humanName") public var humanName
    @Field<MySchemaModule.ID>("id") public var id
    @Field<Bool>("laysEggs") public var laysEggs
    @Field<MySchemaModule.Human>("owner") public var owner
    @Field<[MySchemaModule.Animal]>("predators") public var predators
    @Field<GraphQLEnum<MySchemaModule.SkinCovering>>("skinCovering") public var skinCovering
    @Field<String>("species") public var species
  }
}

public extension Mock where O == MySchemaModule.Dog {
  convenience init(
    birthdate: MySchemaModule.CustomDate? = nil,
    bodyTemperature: Int? = nil,
    favoriteToy: String? = nil,
    height: Mock<MySchemaModule.Height>? = nil,
    humanName: String? = nil,
    id: MySchemaModule.ID? = nil,
    laysEggs: Bool? = nil,
    owner: Mock<MySchemaModule.Human>? = nil,
    predators: [AnyMock]? = nil,
    skinCovering: GraphQLEnum<MySchemaModule.SkinCovering>? = nil,
    species: String? = nil
  ) {
    self.init()
    self.birthdate = birthdate
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
  }
}
