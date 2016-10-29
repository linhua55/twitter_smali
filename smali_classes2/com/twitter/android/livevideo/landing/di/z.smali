.class public final Lcom/twitter/android/livevideo/landing/di/z;
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
        "Labl;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/twitter/android/livevideo/landing/di/w;

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/twitter/android/livevideo/landing/di/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/livevideo/landing/di/z;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/android/livevideo/landing/di/w;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/livevideo/landing/di/w;",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;",
            "Lden",
            "<",
            "Labk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/z;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/di/z;->b:Lcom/twitter/android/livevideo/landing/di/w;

    .line 33
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/z;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/livevideo/landing/di/z;->c:Lden;

    .line 35
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/z;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/livevideo/landing/di/z;->d:Lden;

    .line 37
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/z;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/livevideo/landing/di/z;->e:Lden;

    .line 39
    return-void
.end method

.method public static a(Lcom/twitter/android/livevideo/landing/di/w;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/livevideo/landing/di/w;",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;",
            "Lden",
            "<",
            "Labk;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Labl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/z;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twitter/android/livevideo/landing/di/z;-><init>(Lcom/twitter/android/livevideo/landing/di/w;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Labl;
    .locals 4

    .prologue
    .line 43
    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/di/z;->b:Lcom/twitter/android/livevideo/landing/di/w;

    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/z;->c:Lden;

    .line 45
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/z;->d:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/z;->e:Lden;

    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labk;

    .line 44
    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/livevideo/landing/di/w;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Labk;)Labl;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/di/z;->a()Labl;

    move-result-object v0

    return-object v0
.end method
