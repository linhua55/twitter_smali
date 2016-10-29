.class Lcom/twitter/android/moments/viewmodels/e;
.super Lcom/twitter/android/moments/viewmodels/j;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/b;

.field private final d:Lcom/twitter/model/moments/maker/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/h;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/e;->a:Lcom/twitter/android/moments/viewmodels/b;

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/j;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/w;)V

    .line 189
    iput-object p2, p0, Lcom/twitter/android/moments/viewmodels/e;->d:Lcom/twitter/model/moments/maker/h;

    .line 190
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/e;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/e;->d:Lcom/twitter/model/moments/maker/h;

    iget-wide v2, v1, Lcom/twitter/model/moments/maker/h;->c:J

    sget-object v1, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-static {v0, v2, v3, v1}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;JLcom/twitter/model/moments/MomentPageDisplayMode;)Ljava/lang/Integer;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/e;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/e;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/e;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    :cond_0
    return-void
.end method
