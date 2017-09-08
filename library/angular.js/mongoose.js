String
Number
Date
Buffer
Boolean
Mixed
Objectid
Array

updated: { type: Date, default: Date.now },
age:     { type: Number, min: 18, max: 65 },
mixed:   Schema.Types.Mixed,
_id:     Schema.Types.ObjectId,
array:      []
ofString:   [String]
ofNumber:   [Number]
nested: {
  stuff: { type: String, lowercase: true, trim: true }
}


remove by date:

  db.getCollection('pages').remove({updated_at: {$gt: new ISODate("2017-01-12T00:00:00Z")}})
  db.getCollection('articles').remove({updated_at: {$gt: new ISODate("2017-01-12T00:00:00Z")}})
