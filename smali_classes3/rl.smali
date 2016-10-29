.class Lrl;
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
        "Lclh;",
        "Lclh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lclh;

.field final synthetic b:Lrj;


# direct methods
.method constructor <init>(Lrj;Lclh;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lrl;->b:Lrj;

    iput-object p2, p0, Lrl;->a:Lclh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lclh;)Lclh;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lrl;->a:Lclh;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, Lclh;

    invoke-virtual {p0, p1}, Lrl;->a(Lclh;)Lclh;

    move-result-object v0

    return-object v0
.end method
