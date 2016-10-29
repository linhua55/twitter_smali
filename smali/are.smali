.class public Lare;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lard;


# instance fields
.field private final a:Lari;

.field private final b:Larm;


# direct methods
.method public constructor <init>(Lari;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lare;->a:Lari;

    .line 20
    new-instance v0, Larm;

    invoke-direct {v0}, Larm;-><init>()V

    iput-object v0, p0, Lare;->b:Larm;

    .line 21
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lare;->b:Larm;

    invoke-virtual {v0}, Larm;->a()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            ")",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lare;->a:Lari;

    invoke-interface {v0, p1, p2}, Lari;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lare;->b:Larm;

    invoke-virtual {v0, p1}, Larm;->b(I)V

    .line 26
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lare;->b:Larm;

    invoke-virtual {v0}, Larm;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lare;->a:Lari;

    iget-object v1, p0, Lare;->b:Larm;

    invoke-interface {v0, p1, p2, v1}, Lari;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Larm;)V

    goto :goto_0
.end method
