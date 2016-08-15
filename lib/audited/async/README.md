# Async Adapters

Each Audited::Async adapter must implemented an `enqueue` class method
that takes an array of attribute hashes. See `rsync.rb` for an example.

When adding an adapter, make sure to add it to `ASYNC_ADAPTERS` in
`../auditor.rb`.
