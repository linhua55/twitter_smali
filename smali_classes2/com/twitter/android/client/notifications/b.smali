.class Lcom/twitter/android/client/notifications/b;
.super Lcom/twitter/android/client/notifications/ac;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/client/notifications/DMNotif;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/android/client/notifications/DMNotif;Lcom/twitter/library/platform/notifications/ae;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 224
    iput-object p1, p0, Lcom/twitter/android/client/notifications/b;->a:Lcom/twitter/android/client/notifications/DMNotif;

    .line 225
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/twitter/android/client/notifications/ac;-><init>(Lcom/twitter/library/platform/notifications/ae;Ljava/lang/String;J)V

    .line 226
    iget-object v0, p2, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/au;->a(I)Lcom/twitter/util/collection/au;

    move-result-object v1

    .line 227
    iget-object v0, p2, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/platform/notifications/i;

    .line 228
    iget-object v0, v0, Lcom/twitter/library/platform/notifications/i;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/twitter/android/client/notifications/b;->b:Ljava/util/Set;

    .line 231
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[B)Landroid/text/SpannableString;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v0, p0, Lcom/twitter/android/client/notifications/b;->a:Lcom/twitter/android/client/notifications/DMNotif;

    invoke-static {v0}, Lcom/twitter/android/client/notifications/DMNotif;->a(Lcom/twitter/android/client/notifications/DMNotif;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/notifications/b;->a:Lcom/twitter/android/client/notifications/DMNotif;

    invoke-static {v0}, Lcom/twitter/android/client/notifications/DMNotif;->b(Lcom/twitter/android/client/notifications/DMNotif;)Z

    move-result v1

    .line 289
    new-instance v0, Lbod;

    invoke-direct {v0}, Lbod;-><init>()V

    .line 290
    invoke-virtual {v0, v4}, Lbod;->b(Z)Lbod;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/client/notifications/b;->f:Landroid/content/Context;

    .line 291
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbod;->a(Landroid/content/res/Resources;)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/b;->c:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v2, v2, Lcom/twitter/library/platform/notifications/ae;->i:J

    .line 292
    invoke-virtual {v0, v2, v3}, Lbod;->a(J)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/b;->c:Lcom/twitter/library/platform/notifications/ae;

    iget-object v2, v2, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v2, v2, Lcsi;->b:Lcse;

    iget-wide v2, v2, Lcse;->b:J

    .line 293
    invoke-virtual {v0, v2, v3}, Lbod;->b(J)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 294
    invoke-virtual {v0, p1}, Lbod;->a(Ljava/lang/String;)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 295
    invoke-virtual {v0, v1}, Lbod;->a(Z)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 296
    invoke-virtual {v0, p2}, Lbod;->b(Ljava/lang/String;)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 297
    invoke-virtual {v0, v4}, Lbod;->a(I)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 298
    invoke-static {p3}, Lcom/twitter/android/client/notifications/DMNotif;->a([B)I

    move-result v2

    invoke-virtual {v0, v2}, Lbod;->b(I)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 299
    invoke-virtual {v0}, Lbod;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbno;

    .line 300
    invoke-virtual {v0}, Lbno;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 302
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/client/notifications/b;->a(Landroid/text/SpannableString;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 235
    iget-object v1, p0, Lcom/twitter/android/client/notifications/b;->c:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, v1, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/client/notifications/b;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/b;->c:Lcom/twitter/library/platform/notifications/ae;

    iget-object v2, v2, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/platform/notifications/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/twitter/android/client/notifications/b;->c:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/twitter/android/client/notifications/b;->c:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v0, v0, Lcsi;->b:Lcse;

    iget-object v0, v0, Lcse;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/client/notifications/b;->c:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, v1, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v1, v1, Lcsi;->b:Lcse;

    iget-object v1, v1, Lcse;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2007

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/notifications/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/twitter/android/client/notifications/b;->a:Lcom/twitter/android/client/notifications/DMNotif;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/DMNotif;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/twitter/android/client/notifications/b;->a:Lcom/twitter/android/client/notifications/DMNotif;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/DMNotif;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 267
    const v0, 0x7f020650

    return v0
.end method

.method public g()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/twitter/android/client/notifications/b;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/b;->c:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, v1, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/client/notifications/DMNotif;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-string/jumbo v0, "message"

    return-object v0
.end method
