.class public final Lcom/twitter/android/people/az;
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
        "Lcom/twitter/android/people/aq;",
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
            "Lcom/twitter/android/people/adapters/viewbinders/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ac;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/p;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/am;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ar;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/q;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/z;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ao;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/twitter/android/people/az;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/az;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/m;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ac;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/p;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/am;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ar;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/q;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/a;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/z;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ao;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/y;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/az;->b:Lden;

    .line 57
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/people/az;->c:Lden;

    .line 59
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/people/az;->d:Lden;

    .line 61
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/people/az;->e:Lden;

    .line 63
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_4
    iput-object p5, p0, Lcom/twitter/android/people/az;->f:Lden;

    .line 65
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_5
    iput-object p6, p0, Lcom/twitter/android/people/az;->g:Lden;

    .line 67
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_6
    iput-object p7, p0, Lcom/twitter/android/people/az;->h:Lden;

    .line 69
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_7
    iput-object p8, p0, Lcom/twitter/android/people/az;->i:Lden;

    .line 71
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_8
    iput-object p9, p0, Lcom/twitter/android/people/az;->j:Lden;

    .line 73
    sget-boolean v0, Lcom/twitter/android/people/az;->a:Z

    if-nez v0, :cond_9

    if-nez p10, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_9
    iput-object p10, p0, Lcom/twitter/android/people/az;->k:Lden;

    .line 75
    return-void
.end method

.method public static a(Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/m;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ac;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/p;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/am;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ar;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/q;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/a;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/z;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ao;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/y;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/people/aq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/twitter/android/people/az;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/people/az;-><init>(Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/people/aq;
    .locals 10

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/android/people/az;->b:Lden;

    .line 81
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/adapters/viewbinders/m;

    iget-object v1, p0, Lcom/twitter/android/people/az;->c:Lden;

    .line 82
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/people/adapters/viewbinders/ac;

    iget-object v2, p0, Lcom/twitter/android/people/az;->d:Lden;

    .line 83
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/people/adapters/viewbinders/p;

    iget-object v3, p0, Lcom/twitter/android/people/az;->e:Lden;

    .line 84
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/people/adapters/viewbinders/am;

    iget-object v4, p0, Lcom/twitter/android/people/az;->f:Lden;

    .line 85
    invoke-interface {v4}, Lden;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/people/adapters/viewbinders/ar;

    iget-object v5, p0, Lcom/twitter/android/people/az;->g:Lden;

    .line 86
    invoke-interface {v5}, Lden;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/people/adapters/viewbinders/q;

    iget-object v6, p0, Lcom/twitter/android/people/az;->h:Lden;

    .line 87
    invoke-interface {v6}, Lden;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/people/adapters/viewbinders/a;

    iget-object v7, p0, Lcom/twitter/android/people/az;->i:Lden;

    .line 88
    invoke-interface {v7}, Lden;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/twitter/android/people/adapters/viewbinders/z;

    iget-object v8, p0, Lcom/twitter/android/people/az;->j:Lden;

    .line 89
    invoke-interface {v8}, Lden;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/people/adapters/viewbinders/ao;

    iget-object v9, p0, Lcom/twitter/android/people/az;->k:Lden;

    .line 90
    invoke-interface {v9}, Lden;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/twitter/android/people/adapters/viewbinders/y;

    .line 80
    invoke-static/range {v0 .. v9}, Lcom/twitter/android/people/as;->a(Lcom/twitter/android/people/adapters/viewbinders/m;Lcom/twitter/android/people/adapters/viewbinders/ac;Lcom/twitter/android/people/adapters/viewbinders/p;Lcom/twitter/android/people/adapters/viewbinders/am;Lcom/twitter/android/people/adapters/viewbinders/ar;Lcom/twitter/android/people/adapters/viewbinders/q;Lcom/twitter/android/people/adapters/viewbinders/a;Lcom/twitter/android/people/adapters/viewbinders/z;Lcom/twitter/android/people/adapters/viewbinders/ao;Lcom/twitter/android/people/adapters/viewbinders/y;)Lcom/twitter/android/people/aq;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 79
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/aq;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/twitter/android/people/az;->a()Lcom/twitter/android/people/aq;

    move-result-object v0

    return-object v0
.end method
