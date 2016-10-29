.class Lrn;
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
        "Lbmd;",
        "Lclh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrj;


# direct methods
.method constructor <init>(Lrj;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lrn;->a:Lrj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbmd;)Lclh;
    .locals 1

    .prologue
    .line 81
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lbmd;->f:Lclh;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, Lbmd;

    invoke-virtual {p0, p1}, Lrn;->a(Lbmd;)Lclh;

    move-result-object v0

    return-object v0
.end method
