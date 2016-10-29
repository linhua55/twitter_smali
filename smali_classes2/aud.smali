.class public Laud;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Laud;->a:Landroid/app/Activity;

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Laud;->b:Landroid/content/Intent;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Laun;Ljava/lang/Object;)Laud;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Laun",
            "<TE;>;TE;)",
            "Laud;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Laud;->b:Landroid/content/Intent;

    invoke-interface {p1, v0, p2}, Laun;->a(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 23
    return-object p0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Laud;->a:Landroid/app/Activity;

    iget-object v1, p0, Laud;->b:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 28
    iget-object v0, p0, Laud;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 29
    return-void
.end method
