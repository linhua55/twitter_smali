.class public final Lcom/twitter/android/smartfollow/followpeople/d;
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
        "Lcom/twitter/android/smartfollow/followpeople/a;",
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
            "Lcom/twitter/android/smartfollow/followpeople/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/s;",
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
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/twitter/android/smartfollow/followpeople/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/smartfollow/followpeople/d;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/a;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/s;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lcom/twitter/android/smartfollow/followpeople/d;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/smartfollow/followpeople/d;->b:Lddo;

    .line 31
    sget-boolean v0, Lcom/twitter/android/smartfollow/followpeople/d;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/smartfollow/followpeople/d;->c:Lden;

    .line 33
    sget-boolean v0, Lcom/twitter/android/smartfollow/followpeople/d;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/smartfollow/followpeople/d;->d:Lden;

    .line 35
    return-void
.end method

.method public static a(Lddo;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/a;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/s;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;>;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/twitter/android/smartfollow/followpeople/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/smartfollow/followpeople/d;-><init>(Lddo;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/smartfollow/followpeople/a;
    .locals 4

    .prologue
    .line 39
    iget-object v2, p0, Lcom/twitter/android/smartfollow/followpeople/d;->b:Lddo;

    new-instance v3, Lcom/twitter/android/smartfollow/followpeople/a;

    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/d;->c:Lden;

    .line 42
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/s;

    iget-object v1, p0, Lcom/twitter/android/smartfollow/followpeople/d;->d:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/util/StateSaver;

    invoke-direct {v3, v0, v1}, Lcom/twitter/android/smartfollow/followpeople/a;-><init>(Lcom/twitter/android/people/s;Lcom/twitter/app/common/util/StateSaver;)V

    .line 39
    invoke-static {v2, v3}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/a;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/d;->a()Lcom/twitter/android/smartfollow/followpeople/a;

    move-result-object v0

    return-object v0
.end method
