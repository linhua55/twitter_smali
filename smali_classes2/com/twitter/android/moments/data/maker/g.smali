.class public final Lcom/twitter/android/moments/data/maker/g;
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
        "Lcom/twitter/android/moments/data/maker/f;",
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
            "Lcom/evernote/android/job/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/twitter/android/moments/data/maker/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/moments/data/maker/g;->a:Z

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
            "Lcom/evernote/android/job/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/twitter/android/moments/data/maker/g;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/g;->b:Lden;

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
            "Lcom/evernote/android/job/h;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/moments/data/maker/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/android/moments/data/maker/g;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/data/maker/g;-><init>(Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/moments/data/maker/f;
    .locals 2

    .prologue
    .line 22
    new-instance v1, Lcom/twitter/android/moments/data/maker/f;

    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/g;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/h;

    invoke-direct {v1, v0}, Lcom/twitter/android/moments/data/maker/f;-><init>(Lcom/evernote/android/job/h;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/twitter/android/moments/data/maker/g;->a()Lcom/twitter/android/moments/data/maker/f;

    move-result-object v0

    return-object v0
.end method