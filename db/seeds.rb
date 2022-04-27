Author.delete_all
Book.delete_all

wilbur = Author.create(name: 'Wilbur Addison Smith', date_of_birth: '09/01/1933', nationality: 'sudafricana')
wilbur.books.create(title: 'Uccelli da preda', publication_date: '01/01/1997', note: "Sir Francis Courteney nel 1667...")

kenneth = Author.create(name: 'Kenneth Martin Follett', date_of_birth: '05/06/1949', nationality: 'inglese')
kenneth.books.create(title: 'La caduta dei giganti', publication_date: '28/09/2010', note: "Il libro si apre con una panoramica...")
kenneth.books.create(title: 'Il terzo gemello', publication_date: '01/01/1966', note: "Jeannie Ferrami è una scienziata incaricata...")