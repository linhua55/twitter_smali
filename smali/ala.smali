.class Lala;
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
.field final synthetic a:Laky;


# direct methods
.method constructor <init>(Laky;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lala;->a:Laky;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lala;->a:Laky;

    invoke-static {v0}, Laky;->a(Laky;)Lajt;

    move-result-object v0

    iget-object v1, p0, Lala;->a:Laky;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 116
    invoke-interface {v0, v1, v2}, Lajt;->a(Lali;I)V

    .line 118
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lala;->a(Ljava/lang/Integer;)V

    return-void
.end method
