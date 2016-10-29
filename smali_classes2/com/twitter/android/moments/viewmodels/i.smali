.class Lcom/twitter/android/moments/viewmodels/i;
.super Lcom/twitter/android/moments/viewmodels/j;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/b;

.field private final d:Lcom/twitter/model/moments/maker/s;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/s;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/i;->a:Lcom/twitter/android/moments/viewmodels/b;

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/j;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/w;)V

    .line 167
    iput-object p2, p0, Lcom/twitter/android/moments/viewmodels/i;->d:Lcom/twitter/model/moments/maker/s;

    .line 168
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/i;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/i;->d:Lcom/twitter/model/moments/maker/s;

    iget-wide v2, v1, Lcom/twitter/model/moments/maker/s;->c:J

    sget-object v1, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-static {v0, v2, v3, v1}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;JLcom/twitter/model/moments/MomentPageDisplayMode;)Ljava/lang/Integer;

    move-result-object v1

    .line 173
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/i;->d:Lcom/twitter/model/moments/maker/s;

    iget-object v2, v0, Lcom/twitter/model/moments/maker/s;->b:Lcom/twitter/model/moments/maker/aj;

    .line 174
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/i;->a:Lcom/twitter/android/moments/viewmodels/b;

    invoke-static {v0, v2}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/aj;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 175
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/i;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    .line 177
    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/i;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v3, v1, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/i;->a:Lcom/twitter/android/moments/viewmodels/b;

    .line 178
    invoke-static {v1, v2}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/aj;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 177
    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 180
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
