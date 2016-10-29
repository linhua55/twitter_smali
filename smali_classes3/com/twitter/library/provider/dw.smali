.class Lcom/twitter/library/provider/dw;
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
        "Lcks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/provider/dm;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/dm;)V
    .locals 0

    .prologue
    .line 11735
    iput-object p1, p0, Lcom/twitter/library/provider/dw;->a:Lcom/twitter/library/provider/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcks;)Z
    .locals 1

    .prologue
    .line 11738
    instance-of v0, p1, Lckx;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11735
    check-cast p1, Lcks;

    invoke-virtual {p0, p1}, Lcom/twitter/library/provider/dw;->a(Lcks;)Z

    move-result v0

    return v0
.end method
