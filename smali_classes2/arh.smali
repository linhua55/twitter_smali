.class Larh;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Larg;


# direct methods
.method constructor <init>(Larg;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Larh;->a:Larg;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Larm;->a(I)I

    move-result v0

    .line 129
    iget-object v1, p0, Larh;->a:Larg;

    invoke-virtual {v1, v0}, Larg;->a(I)Z

    .line 130
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Larh;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public bt_()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Larh;->a:Larg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Larg;->a(Larg;Lrx/o;)Lrx/o;

    .line 120
    return-void
.end method
