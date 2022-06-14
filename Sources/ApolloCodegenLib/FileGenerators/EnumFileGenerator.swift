import Foundation
import ApolloUtils

/// Generates a file containing the Swift representation of a [GraphQL Enum](https://spec.graphql.org/draft/#sec-Enums).
struct EnumFileGenerator: FileGenerator {
  /// Source GraphQL enum.
  let graphqlEnum: GraphQLEnumType
  /// Shared codegen configuration.
  let config: ReferenceWrapped<ApolloCodegenConfiguration>

  var template: TemplateRenderer {
    EnumTemplate(graphqlEnum: graphqlEnum, config: config)
  }

  var target: FileTarget { .enum }
  var fileName: String { "\(graphqlEnum.name).swift" }
}