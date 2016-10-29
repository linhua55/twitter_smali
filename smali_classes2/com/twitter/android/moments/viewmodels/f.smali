.class Lcom/twitter/android/moments/viewmodels/f;
.super Lcom/twitter/android/moments/viewmodels/j;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/b;

.field private final d:Lcom/twitter/model/moments/maker/al;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/al;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/f;->a:Lcom/twitter/android/moments/viewmodels/b;

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/j;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/w;)V

    .line 240
    iput-object p2, p0, Lcom/twitter/android/moments/viewmodels/f;->d:Lcom/twitter/model/moments/maker/al;

    .line 241
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 245
    iget-object v2, p0, Lcom/twitter/android/moments/viewmodels/f;->a:Lcom/twitter/android/moments/viewmodels/b;

    new-instance v1, Lcom/twitter/model/moments/viewmodels/v;

    invoke-direct {v1}, Lcom/twitter/model/moments/viewmodels/v;-><init>()V

    new-instance v0, Lcom/twitter/model/moments/am;

    invoke-direct {v0}, Lcom/twitter/model/moments/am;-><init>()V

    iget-object v3, p0, Lcom/twitter/android/moments/viewmodels/f;->d:Lcom/twitter/model/moments/maker/al;

    iget-object v3, v3, Lcom/twitter/model/moments/maker/al;->a:Landroid/net/Uri;

    .line 247
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/model/moments/am;->a(Ljava/lang/String;)Lcom/twitter/model/moments/am;

    move-result-object v0

    sget-object v3, Lcom/twitter/model/moments/MomentPageDisplayMode;->a:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 248
    invoke-virtual {v0, v3}, Lcom/twitter/model/moments/am;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/am;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/twitter/model/moments/am;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    .line 246
    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/viewmodels/v;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/v;

    sget-object v1, Lcom/twitter/model/moments/MomentPageDisplayMode;->a:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 250
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/v;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/v;

    sget-object v1, Lcom/twitter/model/moments/k;->b:Lcom/twitter/model/moments/k;

    .line 251
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/v;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/r;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/v;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/f;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v1, v1, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    .line 252
    invoke-virtual {v1}, Lcom/twitter/model/moments/af;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/moments/ad;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/v;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/v;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/f;->d:Lcom/twitter/model/moments/maker/al;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/al;->a:Landroid/net/Uri;

    .line 253
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/v;->a(Ljava/lang/String;)Lcom/twitter/model/moments/viewmodels/r;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/v;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/f;->d:Lcom/twitter/model/moments/maker/al;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/al;->c:Lcom/twitter/util/math/Size;

    .line 254
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/v;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/viewmodels/r;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/v;

    .line 255
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 245
    invoke-static {v2, v0}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 256
    return-void
.end method
