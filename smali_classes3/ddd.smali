.class public Lddd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final a:Lrx/ap;

.field private volatile b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ldde;

    invoke-direct {v0, p0}, Ldde;-><init>(Lddd;)V

    invoke-virtual {p1, v0}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lddd;->a:Lrx/ap;

    .line 29
    return-void
.end method

.method static synthetic a(Lddd;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lddd;->b:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lddd;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lddd;->a:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 39
    return-void
.end method
