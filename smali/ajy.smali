.class Lajy;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lajy;->a:Lajx;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lajy;->a:Lajx;

    invoke-static {v0}, Lajx;->a(Lajx;)Lajt;

    move-result-object v0

    iget-object v1, p0, Lajy;->a:Lajx;

    invoke-interface {v0, v1}, Lajt;->a(Lali;)V

    .line 121
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lajy;->a(Landroid/view/View;)V

    return-void
.end method
