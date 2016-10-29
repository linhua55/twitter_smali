.class Lrr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lrq;


# direct methods
.method constructor <init>(Lrq;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lrr;->a:Lrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lrr;->a:Lrq;

    invoke-static {v0}, Lrq;->a(Lrq;)Lcdg;

    move-result-object v0

    invoke-static {}, Lrp;->a()Lcom/twitter/library/geo/provider/param/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcdg;->a(Lcom/twitter/library/geo/provider/param/a;)V

    .line 56
    iget-object v0, p0, Lrr;->a:Lrq;

    invoke-virtual {v0}, Lrq;->a()V

    .line 57
    return-void
.end method
