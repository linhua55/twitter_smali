.class Lcom/twitter/library/geo/wifilog/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcom/twitter/library/platform/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/geo/wifilog/b;


# direct methods
.method constructor <init>(Lcom/twitter/library/geo/wifilog/b;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/twitter/library/geo/wifilog/c;->a:Lcom/twitter/library/geo/wifilog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/platform/g;)Z
    .locals 1

    .prologue
    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/platform/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/twitter/library/platform/g;

    invoke-virtual {p0, p1}, Lcom/twitter/library/geo/wifilog/c;->a(Lcom/twitter/library/platform/g;)Z

    move-result v0

    return v0
.end method
