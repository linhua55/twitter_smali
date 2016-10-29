.class Ldkw;
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
        "Lrx/ap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lrx/ap;

.field final synthetic b:Ldkv;


# direct methods
.method constructor <init>(Ldkv;[Lrx/ap;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Ldkw;->b:Ldkv;

    iput-object p2, p0, Ldkw;->a:[Lrx/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ap;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Ldkw;->a:[Lrx/ap;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 57
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lrx/ap;

    invoke-virtual {p0, p1}, Ldkw;->a(Lrx/ap;)V

    return-void
.end method
