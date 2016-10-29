.class public Lcht;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "conversation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "join_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "last_read_event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "join_conversation_event_id"

    aput-object v2, v0, v1

    sput-object v0, Lcht;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcht;->b:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcht;->c:J

    .line 37
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcht;->d:J

    .line 38
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcht;->e:J

    .line 39
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcht;->f:J

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/dms/Participant;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/model/dms/dn;

    invoke-direct {v0}, Lcom/twitter/model/dms/dn;-><init>()V

    iget-wide v2, p0, Lcht;->c:J

    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/dn;->a(J)Lcom/twitter/model/dms/dm;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dn;

    iget-wide v2, p0, Lcht;->d:J

    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/dn;->b(J)Lcom/twitter/model/dms/dm;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dn;

    iget-wide v2, p0, Lcht;->e:J

    .line 47
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/dn;->c(J)Lcom/twitter/model/dms/dm;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dn;

    iget-wide v2, p0, Lcht;->f:J

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/dn;->d(J)Lcom/twitter/model/dms/dm;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dn;

    .line 49
    invoke-virtual {v0}, Lcom/twitter/model/dms/dn;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/Participant;

    .line 44
    return-object v0
.end method
