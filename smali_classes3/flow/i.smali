.class Lflow/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lflow/o;


# instance fields
.field final synthetic a:Lflow/h;


# direct methods
.method constructor <init>(Lflow/h;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lflow/i;->a:Lflow/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lflow/q;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
