.class public Lcbv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:Ljava/lang/String;

.field public final t:Landroid/net/Uri;

.field public final u:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string/jumbo v0, "notifications_tab_android_use_reference_table"

    invoke-static {v0, v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "notifications_tab_render_generic_activities"

    .line 46
    invoke-static {v1, v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 45
    invoke-direct {p0, v0, v1}, Lcbv;-><init>(ZZ)V

    .line 47
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcbv;->a:Z

    .line 53
    if-eqz p1, :cond_1

    .line 54
    iput v0, p0, Lcbv;->b:I

    .line 55
    const/16 v0, 0x9

    iput v0, p0, Lcbv;->c:I

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcbv;->d:I

    .line 57
    const/16 v0, 0xd

    iput v0, p0, Lcbv;->e:I

    .line 58
    const/16 v0, 0xc

    iput v0, p0, Lcbv;->f:I

    .line 59
    const/16 v0, 0xb

    iput v0, p0, Lcbv;->g:I

    .line 60
    const/16 v0, 0x10

    iput v0, p0, Lcbv;->h:I

    .line 61
    const/16 v0, 0xf

    iput v0, p0, Lcbv;->i:I

    .line 62
    const/16 v0, 0xe

    iput v0, p0, Lcbv;->j:I

    .line 63
    const/16 v0, 0x13

    iput v0, p0, Lcbv;->k:I

    .line 64
    const/16 v0, 0x12

    iput v0, p0, Lcbv;->l:I

    .line 65
    const/16 v0, 0x11

    iput v0, p0, Lcbv;->m:I

    .line 66
    iput v2, p0, Lcbv;->n:I

    .line 67
    iput v3, p0, Lcbv;->o:I

    .line 68
    iput v4, p0, Lcbv;->p:I

    .line 69
    iput v1, p0, Lcbv;->q:I

    .line 70
    const/16 v0, 0x8

    iput v0, p0, Lcbv;->r:I

    .line 72
    if-eqz p2, :cond_0

    const-string/jumbo v0, "notifications_tab_type=?"

    :goto_0
    iput-object v0, p0, Lcbv;->s:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/twitter/library/provider/db;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcbv;->t:Landroid/net/Uri;

    .line 75
    sget-object v0, Lcgv;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcbv;->u:[Ljava/lang/String;

    .line 99
    :goto_1
    return-void

    .line 72
    :cond_0
    const-string/jumbo v0, "notifications_tab_type=? AND (notifications_tab_data_type=0 OR notifications_tab_data_type=2)"

    goto :goto_0

    .line 77
    :cond_1
    iput v0, p0, Lcbv;->b:I

    .line 78
    iput v1, p0, Lcbv;->c:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcbv;->d:I

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcbv;->e:I

    .line 81
    const/4 v0, 0x4

    iput v0, p0, Lcbv;->f:I

    .line 82
    iput v2, p0, Lcbv;->g:I

    .line 83
    iput v3, p0, Lcbv;->h:I

    .line 84
    iput v4, p0, Lcbv;->i:I

    .line 85
    const/16 v0, 0x8

    iput v0, p0, Lcbv;->j:I

    .line 86
    const/16 v0, 0x9

    iput v0, p0, Lcbv;->k:I

    .line 87
    const/16 v0, 0xa

    iput v0, p0, Lcbv;->l:I

    .line 88
    const/16 v0, 0xb

    iput v0, p0, Lcbv;->m:I

    .line 89
    const/16 v0, 0xc

    iput v0, p0, Lcbv;->n:I

    .line 90
    const/16 v0, 0xd

    iput v0, p0, Lcbv;->o:I

    .line 91
    const/16 v0, 0xe

    iput v0, p0, Lcbv;->p:I

    .line 92
    const/16 v0, 0xf

    iput v0, p0, Lcbv;->q:I

    .line 93
    const/16 v0, 0x10

    iput v0, p0, Lcbv;->r:I

    .line 95
    const-string/jumbo v0, "type=?"

    iput-object v0, p0, Lcbv;->s:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/twitter/library/provider/co;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcbv;->t:Landroid/net/Uri;

    .line 97
    sget-object v0, Lcgj;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcbv;->u:[Ljava/lang/String;

    goto :goto_1
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 102
    const-string/jumbo v0, "notifications_tab_write_generic_activities"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
