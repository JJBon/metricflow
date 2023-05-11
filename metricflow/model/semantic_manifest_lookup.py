from dbt_semantic_interfaces.objects.semantic_manifest import SemanticManifest
from metricflow.model.semantics.semantic_model_lookup import SemanticModelLookup
from metricflow.model.semantics.metric_semantics import MetricSemantics
from metricflow.protocols.semantics import SemanticModelAccessor, MetricSemanticsAccessor


class SemanticManifestLookup:
    """Adds semantics information to the user configured model."""

    def __init__(self, semantic_manifest: SemanticManifest) -> None:  # noqa: D
        self._semantic_manifest = semantic_manifest
        self._semantic_model_lookup = SemanticModelLookup(user_configured_model)
        self._metric_semantics = MetricSemantics(self._semantic_manifest, self._semantic_model_lookup)

    @property
    def semantic_manifest(self) -> SemanticManifest:  # noqa: D
        return self._semantic_manifest

    @property
    def semantic_model_lookup(self) -> SemanticModelAccessor:  # noqa: D
        return self._semantic_model_lookup

    @property
    def metric_semantics(self) -> MetricSemanticsAccessor:  # noqa: D
        return self._metric_semantics
