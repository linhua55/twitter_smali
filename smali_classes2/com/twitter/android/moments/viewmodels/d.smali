.class Lcom/twitter/android/moments/viewmodels/d;
.super Lcom/twitter/android/moments/viewmodels/j;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/b;

.field private final d:Lcom/twitter/model/moments/maker/a;

.field private final e:Lcom/twitter/model/moments/viewmodels/m;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/a;Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/d;->a:Lcom/twitter/android/moments/viewmodels/b;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/j;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/w;)V

    .line 103
    iput-object p2, p0, Lcom/twitter/android/moments/viewmodels/d;->d:Lcom/twitter/model/moments/maker/a;

    .line 104
    iput-object p3, p0, Lcom/twitter/android/moments/viewmodels/d;->e:Lcom/twitter/model/moments/viewmodels/m;

    .line 105
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/d;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/d;->d:Lcom/twitter/model/moments/maker/a;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/a;->b:Lcom/twitter/model/moments/maker/aj;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/aj;)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/d;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v1, v1, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/twitter/android/moments/viewmodels/d;->e:Lcom/twitter/model/moments/viewmodels/m;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method
