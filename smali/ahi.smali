.class public Lahi;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Laho;

.field private final d:Lahn;

.field private final e:Lahl;

.field private final f:Lcom/twitter/android/moments/ui/fullscreen/d;

.field private final g:Lcez;

.field private h:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/d;Lcez;)V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lrx/o;->c()Lrx/o;

    move-result-object v0

    iput-object v0, p0, Lahi;->h:Lrx/o;

    .line 71
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lahi;->i:Ljava/util/List;

    .line 82
    iput-wide p1, p0, Lahi;->a:J

    .line 83
    iput-object p3, p0, Lahi;->b:Ljava/lang/String;

    .line 84
    new-instance v0, Laho;

    const-string/jumbo v1, "list"

    invoke-direct {v0, p0, v1}, Laho;-><init>(Lahi;Ljava/lang/String;)V

    iput-object v0, p0, Lahi;->c:Laho;

    .line 85
    new-instance v0, Lahn;

    const-string/jumbo v1, "hero"

    invoke-direct {v0, p0, v1}, Lahn;-><init>(Lahi;Ljava/lang/String;)V

    iput-object v0, p0, Lahi;->d:Lahn;

    .line 86
    new-instance v0, Lahl;

    const-string/jumbo v1, "carousel"

    invoke-direct {v0, p0, v1}, Lahl;-><init>(Lahi;Ljava/lang/String;)V

    iput-object v0, p0, Lahi;->e:Lahl;

    .line 87
    iput-object p4, p0, Lahi;->f:Lcom/twitter/android/moments/ui/fullscreen/d;

    .line 88
    iput-object p5, p0, Lahi;->g:Lcez;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/d;)V
    .locals 8

    .prologue
    .line 75
    .line 76
    invoke-static {p1, p2, p3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcez;->a(Lcom/twitter/library/provider/dm;)Lcez;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lahi;-><init>(JLjava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/d;Lcez;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lahi;)Lrx/o;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lahi;->h:Lrx/o;

    return-object v0
.end method

.method public static a(J)V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "moments:modern_guide:::open"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, p1, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 107
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 131
    new-instance v0, Lcom/twitter/library/scribe/o;

    invoke-direct {v0}, Lcom/twitter/library/scribe/o;-><init>()V

    .line 132
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/o;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/o;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lahi;->a:J

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "moments:modern_guide:category:%s:navigate"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    .line 134
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/twitter/library/scribe/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/library/scribe/MomentScribeDetails;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 136
    return-void
.end method

.method private b(J)Ldau;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ldau",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lahj;

    invoke-direct {v0, p0, p1, p2}, Lahj;-><init>(Lahi;J)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/DisplayStyle;)Lahl;
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lahk;->a:[I

    invoke-virtual {p1}, Lcom/twitter/model/moments/DisplayStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    invoke-virtual {p0}, Lahi;->b()Laho;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lahi;->c()Lahn;

    move-result-object v0

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()V
    .locals 6

    .prologue
    .line 116
    iget-object v0, p0, Lahi;->f:Lcom/twitter/android/moments/ui/fullscreen/d;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lahi;->a:J

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "moments:modern_guide:::impression"

    aput-object v5, v1, v4

    invoke-direct {v0, v2, v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 119
    :cond_0
    return-void
.end method

.method a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 172
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lahi;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    return-void
.end method

.method a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 186
    iget-object v0, p0, Lahi;->f:Lcom/twitter/android/moments/ui/fullscreen/d;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    new-instance v0, Lcom/twitter/library/scribe/o;

    invoke-direct {v0}, Lcom/twitter/library/scribe/o;-><init>()V

    .line 188
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/scribe/o;->a(J)Lcom/twitter/library/scribe/o;

    move-result-object v0

    iget-object v1, p0, Lahi;->b:Ljava/lang/String;

    .line 189
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/o;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/o;

    move-result-object v1

    .line 190
    if-eqz p5, :cond_0

    .line 191
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/scribe/o;->c(J)Lcom/twitter/library/scribe/o;

    .line 193
    :cond_0
    iget-object v0, p0, Lahi;->i:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lahi;->b(J)Ldau;

    move-result-object v2

    invoke-static {v0, v2}, Lczz;->c(Ljava/lang/Iterable;Ldau;)I

    move-result v2

    .line 194
    if-ltz v2, :cond_1

    .line 195
    iget-object v0, p0, Lahi;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/MomentModule;

    .line 196
    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/MomentModule;->f()Lcqc;

    move-result-object v3

    .line 197
    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/MomentModule;->i()Lcom/twitter/model/moments/ap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/o;->a(Lcom/twitter/model/moments/ap;)Lcom/twitter/library/scribe/o;

    .line 198
    if-eqz v3, :cond_4

    iget-object v0, v3, Lcqc;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/o;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/o;

    .line 200
    :cond_1
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lahi;->a:J

    new-array v0, v6, [Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p4, v6, v7

    invoke-static {p3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    invoke-direct {v3, v4, v5, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Lcom/twitter/library/scribe/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/library/scribe/MomentScribeDetails;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 202
    if-ltz v2, :cond_2

    .line 203
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 205
    :cond_2
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 207
    :cond_3
    return-void

    .line 198
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/v;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lahi;->g:Lcez;

    iget-object v1, p0, Lahi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcez;->a(Ljava/lang/String;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->e()Lrx/o;

    move-result-object v0

    iput-object v0, p0, Lahi;->h:Lrx/o;

    .line 98
    iget-object v0, p1, Lcom/twitter/android/moments/viewmodels/v;->c:Ljava/util/List;

    invoke-static {v0}, Lczz;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lahi;->i:Ljava/util/List;

    .line 99
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "header"

    invoke-direct {p0, p1, v0}, Lahi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public b()Laho;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lahi;->c:Laho;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "footer"

    invoke-direct {p0, p1, v0}, Lahi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public c()Lahn;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lahi;->d:Lahn;

    return-object v0
.end method
