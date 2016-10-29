.class Lcom/twitter/android/moments/viewmodels/h;
.super Lcom/twitter/android/moments/viewmodels/j;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/b;

.field private final d:Lcom/twitter/model/moments/maker/q;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/q;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/h;->a:Lcom/twitter/android/moments/viewmodels/b;

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/j;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/w;)V

    .line 208
    iput-object p2, p0, Lcom/twitter/android/moments/viewmodels/h;->d:Lcom/twitter/model/moments/maker/q;

    .line 209
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/h;->d:Lcom/twitter/model/moments/maker/q;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/h;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/h;->d:Lcom/twitter/model/moments/maker/q;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/n;->b:Lcom/twitter/model/moments/ak;

    iget-object v1, v1, Lcom/twitter/model/moments/ak;->e:Ljava/lang/Long;

    .line 215
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-static {v0, v2, v3, v1}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;JLcom/twitter/model/moments/MomentPageDisplayMode;)Ljava/lang/Integer;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_0

    .line 218
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v2

    .line 219
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/h;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/h;->d:Lcom/twitter/model/moments/maker/q;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/n;->b:Lcom/twitter/model/moments/ak;

    .line 221
    invoke-static {v2, v0}, Lcom/twitter/android/moments/viewmodels/b;->a(Ljava/util/List;Lcom/twitter/model/moments/ak;)Ljava/lang/Integer;

    move-result-object v3

    .line 222
    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    iget-object v4, p0, Lcom/twitter/android/moments/viewmodels/h;->d:Lcom/twitter/model/moments/maker/q;

    iget-object v4, v4, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    iget-object v4, v4, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    invoke-static {v0, v4}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 226
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/h;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Lcom/twitter/model/moments/viewmodels/m;

    invoke-direct {v3, v2}, Lcom/twitter/model/moments/viewmodels/m;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    return-void
.end method
