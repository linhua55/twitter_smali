.class public final Lcom/twitter/android/people/adapters/aq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lcom/twitter/android/people/adapters/ag;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/ba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/twitter/android/people/adapters/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/adapters/aq;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/android/people/ba;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/twitter/android/people/adapters/aq;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/adapters/aq;->b:Lden;

    .line 18
    return-void
.end method

.method public static a(Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/android/people/ba;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/people/adapters/ag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/android/people/adapters/aq;

    invoke-direct {v0, p0}, Lcom/twitter/android/people/adapters/aq;-><init>(Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/people/adapters/ag;
    .locals 2

    .prologue
    .line 22
    new-instance v1, Lcom/twitter/android/people/adapters/ag;

    iget-object v0, p0, Lcom/twitter/android/people/adapters/aq;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/ba;

    invoke-direct {v1, v0}, Lcom/twitter/android/people/adapters/ag;-><init>(Lcom/twitter/android/people/ba;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/twitter/android/people/adapters/aq;->a()Lcom/twitter/android/people/adapters/ag;

    move-result-object v0

    return-object v0
.end method