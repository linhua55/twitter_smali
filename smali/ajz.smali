.class Lajz;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lajz;->a:Lajx;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lajz;->a:Lajx;

    invoke-static {v0}, Lajx;->a(Lajx;)Lajt;

    move-result-object v0

    iget-object v1, p0, Lajz;->a:Lajx;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 126
    invoke-interface {v0, v1, v2}, Lajt;->a(Lali;I)V

    .line 128
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lajz;->a(Ljava/lang/Integer;)V

    return-void
.end method
