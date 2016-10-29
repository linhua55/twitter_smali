.class Lcom/twitter/android/moments/data/maker/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/model/moments/maker/w;",
        "Lcom/twitter/model/moments/viewmodels/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/d;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/w;)Lcom/twitter/model/moments/viewmodels/a;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/d;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-static {v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/viewmodels/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/b;->a()Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, Lcom/twitter/model/moments/maker/w;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/maker/d;->a(Lcom/twitter/model/moments/maker/w;)Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    return-object v0
.end method
