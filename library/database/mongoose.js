/**
 *  Get random domain with `{inCloudFlare: true}` and
 *  is inside `PurchasedDomains`
 */
DomainSchema.statics.random = function(callback) {
    this.count({'inCloudFlare': true}, function(err, count) {
        if (err) {
            return callback(err);
        }
        var rand = Math.floor(Math.random() * count);
        PurchasedDomain.find().distinct('domainId').exec(function(err, purchasedDomains) {
            console.log("purchasedDomains="+purchasedDomains);
            Domain.findOne(
                {'inCloudFlare': true},
                // {'_id': { $in: [Object('5712ba7152e07aac4e0dca55')]}}
                {'_id': { $in: purchasedDomains}}
              )
                .skip(rand).exec(callback);
        });
    });
};
