.class Lcom/twitter/android/moments/data/maker/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/android/moments/data/maker/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/e;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/data/maker/t;)V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 121
    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/e;->a:Lcom/twitter/android/moments/data/maker/a;

    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/e;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-static {v0}, Lcom/twitter/android/moments/data/maker/a;->b(Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/util/object/c;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/moments/data/maker/e;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-static {v2}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/viewmodels/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/moments/viewmodels/b;->a()Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/b;

    invoke-static {v1, v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/viewmodels/b;)Lcom/twitter/android/moments/viewmodels/b;

    .line 122
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Lcom/twitter/android/moments/data/maker/t;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/maker/e;->a(Lcom/twitter/android/moments/data/maker/t;)V

    return-void
.end method
