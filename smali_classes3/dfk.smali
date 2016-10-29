.class Ldfk;
.super Ldfq;
.source "Twttr"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Ldfi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 311
    const-class v0, Ldfi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldfk;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ldfi;Lokio/aa;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Ldfk;->b:Ldfi;

    invoke-direct {p0, p2}, Ldfq;-><init>(Lokio/aa;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 313
    sget-boolean v0, Ldfk;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldfk;->b:Ldfi;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 314
    :cond_0
    iget-object v0, p0, Ldfk;->b:Ldfi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldfi;->c(Ldfi;Z)Z

    .line 315
    return-void
.end method
