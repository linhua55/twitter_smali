.class Lcom/twitter/android/moments/viewmodels/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcom/twitter/android/moments/viewmodels/j;",
        "Lcom/twitter/model/moments/maker/w;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/b;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/viewmodels/b;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/c;->a:Lcom/twitter/android/moments/viewmodels/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/viewmodels/j;)Lcom/twitter/model/moments/maker/w;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p1, Lcom/twitter/android/moments/viewmodels/j;->b:Lcom/twitter/model/moments/maker/w;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    check-cast p1, Lcom/twitter/android/moments/viewmodels/j;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/viewmodels/c;->a(Lcom/twitter/android/moments/viewmodels/j;)Lcom/twitter/model/moments/maker/w;

    move-result-object v0

    return-object v0
.end method
