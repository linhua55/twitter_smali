.class Lde/greenrobot/event/d;
.super Ljava/lang/ThreadLocal;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lde/greenrobot/event/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/greenrobot/event/c;


# direct methods
.method constructor <init>(Lde/greenrobot/event/c;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lde/greenrobot/event/d;->a:Lde/greenrobot/event/c;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lde/greenrobot/event/f;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lde/greenrobot/event/f;

    invoke-direct {v0}, Lde/greenrobot/event/f;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lde/greenrobot/event/d;->a()Lde/greenrobot/event/f;

    move-result-object v0

    return-object v0
.end method
