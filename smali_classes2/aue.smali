.class public Laue;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Laun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laun",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Laud;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Laun;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Laun",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Laue;->a:Laun;

    .line 18
    new-instance v0, Laud;

    invoke-direct {v0, p1}, Laud;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Laue;->b:Laud;

    .line 19
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Laue;->b:Laud;

    iget-object v1, p0, Laue;->a:Laun;

    invoke-virtual {v0, v1, p2}, Laud;->a(Laun;Ljava/lang/Object;)Laud;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Laud;->a(I)V

    .line 24
    return-void
.end method
