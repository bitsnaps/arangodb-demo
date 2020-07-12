1. Welcome to the tutorial!

This is a user-interactive tutorial on ArangoDB and the ArangoDB shell.
It will give you a first look into ArangoDB and how it works.

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> tutorial


2. JavaScript Shell

On this shell's prompt, you can issue arbitrary JavaScript commands.
So you are able to do things like...:

  number = 123;
  number = number * 10;

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> i = 3;
3

127.0.0.1:8529@demo> i = i * 5;
15

127.0.0.1:8529@demo> tutorial


3. Shell History

You can access previously run commands using the up and down keys.
It saves you from retyping 'tutorial' every time for instance.

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> tutorial


4. Running Complex Instructions

You can also run more complex instructions, such as for loops:

  for (var i = 0; i < 10; i++) { number = number + 1; }

Type 'tutorial' again to get to the next chapter.

127.0.0.1:8529@demo> i = 15
15

127.0.0.1:8529@demo> for (var j = 0; j < 3; j++) { i = i + 1;}
18

127.0.0.1:8529@demo> tutorial


5. Printing Results

As you see, the result of the last command executed is printed automatically.
To explicitly print a value at any other time, there is the print function:

  for (var i = 0; i < 5; ++i) { print("I am a JavaScript shell"); }

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> print('ok')
ok

127.0.0.1:8529@demo> print("ok");
ok

127.0.0.1:8529@demo> tutorial


6. Creating Collections

ArangoDB is primarily a document database. This means that we store data as
documents (which are similar to JavaScript objects) in so-called 'collections'.
Let's create a collection named 'places' now:

  db._create('places');

Note: each collection is identified by a unique name. Trying to create a
collection that already exists will produce an error.

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db._create('places');
[ArangoCollection 710, "places" (type document, status loaded)]

127.0.0.1:8529@demo> tutorial


7. Displaying Collections

Now you can take a look at the collection(s) you just created:

  db._collections();

Please note that all collections will be returned, including ArangoDB's
pre-defined system collections.

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db._collections();
[ 
  [ArangoCollection 269, "_analyzers" (type document, status loaded)], 
  [ArangoCollection 284, "_appbundles" (type document, status loaded)], 
  [ArangoCollection 281, "_apps" (type document, status loaded)], 
  [ArangoCollection 272, "_aqlfunctions" (type document, status loaded)], 
  [ArangoCollection 293, "_fishbowl" (type document, status loaded)], 
  [ArangoCollection 287, "_frontend" (type document, status loaded)], 
  [ArangoCollection 266, "_graphs" (type document, status loaded)], 
  [ArangoCollection 278, "_jobs" (type document, status loaded)], 
  [ArangoCollection 290, "_modules" (type document, status loaded)], 
  [ArangoCollection 275, "_queues" (type document, status loaded)], 
  [ArangoCollection 710, "places" (type document, status loaded)] 
]

127.0.0.1:8529@demo> tutorial


8. Accessing a single collection

If you want to access a particular collection, you can either write:

  db.places;

or the more elaborate alternative:

  db._collection('places');

Both return a collection object (if the specified collection exists).

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db.places;
[ArangoCollection 710, "places" (type document, status loaded)]

127.0.0.1:8529@demo> db._collection('places');
[ArangoCollection 710, "places" (type document, status loaded)]

127.0.0.1:8529@demo> tutorial


9. Creating Documents

We have a collection, but it is empty. So let's create some documents!

  db.places.save({ _key : "foo", city : "foo-city" });
  for (var i = 0; i <= 10; i++) {
    db.places.save({ _key: "example" + i, zipcode: i })
  };

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db.places.save({_key: 'foo', city: 'foo-city'});
{ 
  "_id" : "places/foo", 
  "_key" : "foo", 
  "_rev" : "_aySN3H2---" 
}

127.0.0.1:8529@demo>   for (var i = 0; i <= 10; i++) {
...>     db.places.save({ _key: "example" + i, zipcode: i })
...>   };
{ 
  "_id" : "places/example10", 
  "_key" : "example10", 
  "_rev" : "_aySODo----" 
}

127.0.0.1:8529@demo> db._collection('places');
[ArangoCollection 710, "places" (type document, status loaded)]

127.0.0.1:8529@demo> tutorial


10. Displaying All Documents

You want to take a look at your documents? No problem:

  db.places.toArray();

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db.places.toArray();
[ 
  { 
    "_key" : "foo", 
    "_id" : "places/foo", 
    "_rev" : "_aySN3H2---", 
    "city" : "foo-city" 
  }, 
  { 
    "_key" : "example0", 
    "_id" : "places/example0", 
    "_rev" : "_aySODm6---", 
    "zipcode" : 0 
  }, 
  { 
    "_key" : "example1", 
    "_id" : "places/example1", 
    "_rev" : "_aySODn----", 
    "zipcode" : 1 
  }, 
  { 
    "_key" : "example2", 
    "_id" : "places/example2", 
    "_rev" : "_aySODnC---", 
    "zipcode" : 2 
  }, 
  { 
    "_key" : "example3", 
    "_id" : "places/example3", 
    "_rev" : "_aySODnO---", 
    "zipcode" : 3 
  }, 
  { 
    "_key" : "example4", 
    "_id" : "places/example4", 
    "_rev" : "_aySODnS---", 
    "zipcode" : 4 
  }, 
  { 
    "_key" : "example5", 
    "_id" : "places/example5", 
    "_rev" : "_aySODnW---", 
    "zipcode" : 5 
  }, 
  { 
    "_key" : "example6", 
    "_id" : "places/example6", 
    "_rev" : "_aySODni---", 
    "zipcode" : 6 
  }, 
  { 
    "_key" : "example7", 
    "_id" : "places/example7", 
    "_rev" : "_aySODnm---", 
    "zipcode" : 7 
  }, 
  { 
    "_key" : "example8", 
    "_id" : "places/example8", 
    "_rev" : "_aySODnu---", 
    "zipcode" : 8 
  }, 
  { 
    "_key" : "example9", 
    "_id" : "places/example9", 
    "_rev" : "_aySODn6---", 
    "zipcode" : 9 
  }, 
  { 
    "_key" : "example10", 
    "_id" : "places/example10", 
    "_rev" : "_aySODo----", 
    "zipcode" : 10 
  } 
]

127.0.0.1:8529@demo> tutorial


11. Counting Documents

To see how many documents there are in a collection, use the 'count' method:

  db.places.count();

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db.places.
db.places._appendBoolParameter()      db.places.firstExample()
db.places._appendSyncParameter()      db.places.fulltext()
db.places._baseurl()                  db.places.geo()
db.places._database                   db.places.getIndexes()
db.places._dbName                     db.places.getResponsibleShard()
db.places._dbPrefix                   db.places.index()
db.places._documentcollectionurl()    db.places.indexes()
db.places._documenturl()              db.places.inEdges()
db.places._edgesQuery()               db.places.insert()
db.places._help()                     db.places.isArangoCollection
db.places._id                         db.places.iterate()
db.places._indexurl()                 db.places.load()
db.places._name                       db.places.loadIndexesIntoMemory()
db.places._prefixurl()                db.places.lookupByKeys()
db.places._PRINT()                    db.places.name()
db.places._status                     db.places.near()
db.places._type                       db.places.outEdges()
db.places.all()                       db.places.properties()
db.places.any()                       db.places.range()
db.places.byExample()                 db.places.recalculateCount()
db.places.checksum()                  db.places.refresh()
db.places.closedRange()               db.places.remove()
db.places.compact()                   db.places.removeByExample()
127.0.0.1:8529@demo> db.places.co
db.places.compact()  db.places.count()
127.0.0.1:8529@demo> db.places.count();
12

127.0.0.1:8529@demo> tutorial


12. Retrieving Single Documents

As you can see, each document has some meta attributes '_id', '_key' and '_rev'.
The '_key' attribute can be used to quickly retrieve a single document from
a collection:

  db.places.document("foo");
  db.places.document("example5");

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db.places.document('foo');
{ 
  "_key" : "foo", 
  "_id" : "places/foo", 
  "_rev" : "_aySN3H2---", 
  "city" : "foo-city" 
}

127.0.0.1:8529@demo> tutorial


13. Retrieving Single Documents

The '_id' attribute can also be used to retrieve documents using the
'db' object:

  db._document("places/foo");
  db._document("places/example5");

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db.places.document('places/foo');
{ 
  "_key" : "foo", 
  "_id" : "places/foo", 
  "_rev" : "_aySN3H2---", 
  "city" : "foo-city" 
}

127.0.0.1:8529@demo> db.places.document('places/example5');
{ 
  "_key" : "example5", 
  "_id" : "places/example5", 
  "_rev" : "_aySODnW---", 
  "zipcode" : 5 
}

127.0.0.1:8529@demo> tutorial


14. Modifying Documents

You can modify existing documents. Try to add a new attribute to a document and
verify whether it has been added:

  db._update("places/foo", { zipcode: 39535 });
  db._document("places/foo");

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db._update('places/foo', {zipcode: 39535});
{ 
  "_id" : "places/foo", 
  "_key" : "foo", 
  "_rev" : "_aySQGAe--_", 
  "_oldRev" : "_aySN3H2---" 
}

127.0.0.1:8529@demo> db.places.document('places/foo');
{ 
  "_key" : "foo", 
  "_id" : "places/foo", 
  "_rev" : "_aySQGAe--_", 
  "city" : "foo-city", 
  "zipcode" : 39535 
}

127.0.0.1:8529@demo> tutorial


15. Document Revisions

Note that after updating the document, its '_rev' attribute changed
automatically.

The '_rev' attribute contains a document revision number, and it can be used
for conditional modifications. Here's an example of how to avoid lost updates
in case multiple clients are accessing the documents in parallel:

  doc = db._document("places/example1");
  db._update("places/example1", { someValue: 23 });
  db._update(doc, { someValue: 42 });

Note that the first update will succeed because it was unconditional.

The second update however is conditional because we're also passing the
document's revision id in the first parameter to _update. As the revision id
we're passing to update does not match the document's current revision anymore,
the update is rejected.

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> tutorial


16. Removing Documents

Deleting single documents can be achieved by providing the document _id or _key:

  db._remove("places/example7");
  db.places.remove("example8");
  db.places.count();

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db._re
db._registerCollection()  db._remove()
db._registerView()        db._replace()
127.0.0.1:8529@demo> db._remove('places/example7');
{ 
  "_id" : "places/example7", 
  "_key" : "example7", 
  "_rev" : "_aySODnm---" 
}

127.0.0.1:8529@demo> db.places.count();
11

127.0.0.1:8529@demo> db.places.remove('example8');
{ 
  "_id" : "places/example8", 
  "_key" : "example8", 
  "_rev" : "_aySODnu---" 
}

127.0.0.1:8529@demo> db.places.count();
10

127.0.0.1:8529@demo> tutorial


17. Searching Documents

Searching for documents with specific attributes can be done by using the
'byExample' method:

  db._create("users");
  for (var i = 0; i < 10; ++i) {
    db.users.save({ name: "username" + i, active: (i % 3 == 0), age: 30 + i });
  }
  db.users.byExample({ active: false }).toArray();
  db.users.byExample({ name: "username3", active: true }).toArray();

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db._create('users');
[ArangoCollection 1059, "users" (type document, status loaded)]

127.0.0.1:8529@demo> db.places.byExample({zipcode: 4});
SimpleQueryByExample(places)

127.0.0.1:8529@demo> db.places.byExample({zipcode: 4}).toArray();
[ 
  { 
    "_key" : "example4", 
    "_id" : "places/example4", 
    "_rev" : "_aySODnS---", 
    "zipcode" : 4 
  } 
]

127.0.0.1:8529@demo>   for (var i = 0; i < 10; ++i) {
...>     db.users.save({ name: "username" + i, active: (i % 3 == 0), age: 30 + i });
...>   }
{ 
  "_id" : "users/1180", 
  "_key" : "1180", 
  "_rev" : "_aySUcPK--A" 
}

127.0.0.1:8529@demo>   db.users.byExample({ active: false }).toArray();
[ 
  { 
    "_key" : "1164", 
    "_id" : "users/1164", 
    "_rev" : "_aySUcOu---", 
    "name" : "username1", 
    "active" : false, 
    "age" : 31 
  }, 
  { 
    "_key" : "1166", 
    "_id" : "users/1166", 
    "_rev" : "_aySUcOu--A", 
    "name" : "username2", 
    "active" : false, 
    "age" : 32 
  }, 
  { 
    "_key" : "1170", 
    "_id" : "users/1170", 
    "_rev" : "_aySUcO2---", 
    "name" : "username4", 
    "active" : false, 
    "age" : 34 
  }, 
  { 
    "_key" : "1172", 
    "_id" : "users/1172", 
    "_rev" : "_aySUcO2--A", 
    "name" : "username5", 
    "active" : false, 
    "age" : 35 
  }, 
  { 
    "_key" : "1176", 
    "_id" : "users/1176", 
    "_rev" : "_aySUcPG---", 
    "name" : "username7", 
    "active" : false, 
    "age" : 37 
  }, 
  { 
    "_key" : "1178", 
    "_id" : "users/1178", 
    "_rev" : "_aySUcPK---", 
    "name" : "username8", 
    "active" : false, 
    "age" : 38 
  } 
]

127.0.0.1:8529@demo>   db.users.byExample({ name: "username3", active: true }).toArray();
[ 
  { 
    "_key" : "1168", 
    "_id" : "users/1168", 
    "_rev" : "_aySUcOy---", 
    "name" : "username3", 
    "active" : true, 
    "age" : 33 
  } 
]

127.0.0.1:8529@demo> 
127.0.0.1:8529@demo> tutorial


18. Running AQL Queries

ArangoDB also provides a query language (AQL) for more complex matching:

  db._query(`
    FOR u IN users
      FILTER u.active == true && u.age >= 33
      RETURN { username: u.name, age: u.age }
  `).toArray();

Wrapping multi-line queries in backticks is the most convenient way in
today's JavaScript.

See our online documentation for more details on AQL:
https://www.arangodb.com/docs/stable/

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> db._query(`
...> FOR u iN users
...>   FILTER u.active == true && u.age >= 33
...>   RETURN { username: u.name, age: u.age }
...> `).toArray();
[ 
  { 
    "username" : "username3", 
    "age" : 33 
  }, 
  { 
    "username" : "username6", 
    "age" : 36 
  }, 
  { 
    "username" : "username9", 
    "age" : 39 
  } 
]

127.0.0.1:8529@demo> tutorial


19. Using Databases

By default, the ArangoShell connects to the default database.
The default database is named '_system'. To create another database, use the
'_createDatabase' method of the 'db' object. To switch to an existing database,
use '_useDatabase':

  db._createDatabase("mydb");
  db._useDatabase("mydb");

Type 'tutorial' again to get to the next chapter.


127.0.0.1:8529@demo> tutorial


20. Removing Databases

To get rid of a database and all of its collections, use '_dropDatabase'.
It needs to be called from within the '_system' database:

  db._useDatabase("_system");
  db._dropDatabase("mydb");

Congratulations! You finished the tutorial.

