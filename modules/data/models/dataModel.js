const {db} = require('../../../helper/database');

const allData = async () => {
	let sql = `
	SELECT
		id,
		CONCAT(firstname || ' ' || lastname) AS name,
		item,
		email,
		quantity,
		total_price::int
	FROM
		t_order
	ORDER BY
		id ASC
	`;

	try {
		let result = await db.any(sql);
		return result;
	}

	catch(err) {
		console.log(err)
		return false;
	}
}

const pivotData = async () => {
	let sql = `
	SELECT
		DISTINCT(email),
		CONCAT(firstname || ' ' || lastname) AS name,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang1' AND sub1.email = TTO.email) AS barang1,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang2' AND sub1.email = TTO.email) AS barang2,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang3' AND sub1.email = TTO.email) AS barang3,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang4' AND sub1.email = TTO.email) AS barang4,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang5' AND sub1.email = TTO.email) AS barang5,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang6' AND sub1.email = TTO.email) AS barang6,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang7' AND sub1.email = TTO.email) AS barang7,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang8' AND sub1.email = TTO.email) AS barang8,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang9' AND sub1.email = TTO.email) AS barang9,
		(SELECT quantity FROM t_order sub1 WHERE item = 'barang10' AND sub1.email = TTO.email) AS barang10
	FROM
		t_order TTO
		ORDER BY name ASC
	`;

	try {
		let result = await db.any(sql);
		return result;
	}

	catch(err) {
		console.log(err)
		return false;
	}
}

module.exports = {
	allData,
	pivotData
};