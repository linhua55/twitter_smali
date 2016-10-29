.class public final Lcom/twitter/android/smartfollow/waitingforsuggestions/c;
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
        "Lcom/twitter/android/smartfollow/waitingforsuggestions/a;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laov;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/a;",
            ">;",
            "Lden",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/d;",
            ">;>;",
            "Lden",
            "<",
            "Laov;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-boolean v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->b:Lddo;

    .line 36
    sget-boolean v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->c:Lden;

    .line 38
    sget-boolean v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->d:Lden;

    .line 40
    sget-boolean v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->e:Lden;

    .line 42
    return-void
.end method

.method public static a(Lddo;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/a;",
            ">;",
            "Lden",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/d;",
            ">;>;",
            "Lden",
            "<",
            "Laov;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;-><init>(Lddo;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/smartfollow/waitingforsuggestions/a;
    .locals 5

    .prologue
    .line 46
    iget-object v3, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->b:Lddo;

    new-instance v4, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;

    iget-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->c:Lden;

    .line 49
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->d:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/util/StateSaver;

    iget-object v2, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->e:Lden;

    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laov;

    invoke-direct {v4, v0, v1, v2}, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;-><init>(Landroid/os/Handler;Lcom/twitter/app/common/util/StateSaver;Laov;)V

    .line 46
    invoke-static {v3, v4}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/waitingforsuggestions/c;->a()Lcom/twitter/android/smartfollow/waitingforsuggestions/a;

    move-result-object v0

    return-object v0
.end method
