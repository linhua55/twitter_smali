.class Lakz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Laky;


# direct methods
.method constructor <init>(Laky;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lakz;->a:Laky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lakz;->a:Laky;

    invoke-static {v0}, Laky;->a(Laky;)Lajt;

    move-result-object v0

    iget-object v1, p0, Lakz;->a:Laky;

    invoke-interface {v0, v1}, Lajt;->a(Lali;)V

    .line 111
    return-void
.end method
