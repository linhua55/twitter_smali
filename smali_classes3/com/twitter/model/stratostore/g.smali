.class public Lcom/twitter/model/stratostore/g;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EXTDATA:",
        "Lcom/twitter/model/stratostore/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic f:Z


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Lcom/twitter/model/stratostore/j;

.field public final e:Lcom/twitter/model/stratostore/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEXTDATA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/twitter/model/stratostore/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/model/stratostore/g;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/model/stratostore/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/stratostore/h",
            "<TEXTDATA;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/twitter/model/stratostore/g;->f:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/twitter/model/stratostore/h;->a(Lcom/twitter/model/stratostore/h;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/twitter/model/stratostore/h;->a(Lcom/twitter/model/stratostore/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/stratostore/g;->a:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/twitter/model/stratostore/h;->b(Lcom/twitter/model/stratostore/h;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/stratostore/g;->b:I

    .line 37
    invoke-static {p1}, Lcom/twitter/model/stratostore/h;->c(Lcom/twitter/model/stratostore/h;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/stratostore/g;->c:I

    .line 38
    invoke-static {p1}, Lcom/twitter/model/stratostore/h;->d(Lcom/twitter/model/stratostore/h;)Lcom/twitter/model/stratostore/j;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/stratostore/g;->d:Lcom/twitter/model/stratostore/j;

    .line 39
    invoke-static {p1}, Lcom/twitter/model/stratostore/h;->e(Lcom/twitter/model/stratostore/h;)Lcom/twitter/model/stratostore/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/stratostore/g;->e:Lcom/twitter/model/stratostore/i;

    .line 40
    return-void
.end method
