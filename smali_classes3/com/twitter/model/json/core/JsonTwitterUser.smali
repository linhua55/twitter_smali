.class public Lcom/twitter/model/json/core/JsonTwitterUser;
.super Lcom/twitter/model/json/common/e;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/e",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final aa:Ljava/util/regex/Pattern;

.field private static final ab:Ljava/util/regex/Pattern;


# instance fields
.field public A:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public B:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public C:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public D:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public E:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public F:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public G:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public H:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public I:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public J:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public K:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public L:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public M:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public N:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public O:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public P:Lcss;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public Q:Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserEntities;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public R:Lcom/twitter/model/json/core/JsonTwitterUser$JsonActionsArray;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public S:Lcom/twitter/model/geo/TwitterPlace;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public T:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public U:Lcom/twitter/model/profile/ExtendedProfile;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public V:Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserPhone;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public W:Lcom/twitter/model/businessprofiles/BusinessProfileState;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public X:Lcom/twitter/model/analytics/AnalyticsType;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public Y:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public a:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "url_https"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "url"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public m:Lcom/twitter/model/ads/AdvertiserType;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public n:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public o:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public p:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public q:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public r:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public s:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public t:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "protected"
        }
    .end annotation
.end field

.field public u:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public v:Ljava/lang/Boolean;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public w:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "has_extended_profile"
        }
    .end annotation
.end field

.field public x:Ljava/lang/Boolean;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public y:Ljava/lang/Boolean;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public z:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "mute"

    const/16 v2, 0x40

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "block"

    const/16 v2, 0x80

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "report_spam"

    const/16 v2, 0x100

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/twitter/model/json/core/JsonTwitterUser;->Z:Ljava/util/Map;

    .line 51
    const-string/jumbo v0, "@\\w{1,15}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/json/core/JsonTwitterUser;->aa:Ljava/util/regex/Pattern;

    .line 52
    const-string/jumbo v0, "#\\w+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/json/core/JsonTwitterUser;->ab:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->r:I

    return-void
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/twitter/model/json/core/JsonTwitterUser;->Z:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/cv;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/high16 v9, -0x1000000

    const/16 v8, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    iget-wide v4, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->a:J

    .line 161
    invoke-virtual {v0, v4, v5}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->b:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->c:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->d:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->c(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->e:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->i(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->h:Ljava/lang/String;

    .line 166
    invoke-static {v0, v4}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/twitter/model/core/cv;->f(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->i:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->h(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->n:I

    .line 168
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->c(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->o:I

    .line 169
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->d(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->p:I

    .line 170
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->e(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->q:I

    .line 171
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->f(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->r:I

    .line 172
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->g(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->s:I

    .line 173
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->h(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->t:Z

    .line 174
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->b(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->u:Z

    .line 175
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->g(Z)Lcom/twitter/model/core/cv;

    move-result-object v3

    iget-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->w:Z

    if-nez v0, :cond_f

    move v0, v1

    .line 176
    :goto_0
    invoke-virtual {v3, v0}, Lcom/twitter/model/core/cv;->f(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->z:Z

    .line 177
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->c(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->A:Z

    .line 178
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->d(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->B:Z

    .line 179
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->e(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->C:Z

    .line 180
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->a(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->K:Z

    .line 181
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->h(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->N:Z

    .line 182
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->i(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->P:Lcss;

    .line 183
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->a(Lcss;)Lcom/twitter/model/core/cv;

    move-result-object v4

    .line 185
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->T:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 186
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 187
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->T:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/twitter/model/core/cv;->e(J)Lcom/twitter/model/core/cv;

    .line 194
    :goto_1
    const/16 v0, 0x80

    .line 195
    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->v:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->v:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 199
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->x:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 200
    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->x:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v0, v10}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 203
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->y:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->y:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 207
    :cond_2
    :goto_4
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->D:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 208
    :cond_3
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->E:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 209
    :cond_4
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->F:Z

    if-eqz v3, :cond_5

    invoke-static {v0, v8}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 210
    :cond_5
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->G:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x800

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 211
    :cond_6
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->H:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 212
    :cond_7
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->I:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 213
    :cond_8
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->J:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 214
    :cond_9
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->L:Z

    if-eqz v3, :cond_a

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 215
    :cond_a
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->M:Z

    if-eqz v3, :cond_b

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    .line 216
    :cond_b
    iget-boolean v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->O:Z

    if-eqz v3, :cond_15

    const v3, 0x8000

    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    move v3, v0

    .line 218
    :goto_5
    invoke-virtual {v4, v3}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    .line 220
    const/4 v0, 0x0

    .line 221
    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->Q:Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserEntities;

    if-eqz v5, :cond_c

    .line 222
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->Q:Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserEntities;

    iget-object v0, v0, Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserEntities;->b:Lcom/twitter/model/core/bm;

    sget-object v5, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    invoke-static {v0, v5}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->b(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;

    .line 223
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->Q:Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserEntities;

    iget-object v0, v0, Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserEntities;->a:Lcom/twitter/model/core/bm;

    sget-object v5, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    invoke-static {v0, v5}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    .line 227
    :cond_c
    :try_start_0
    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->j:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/twitter/model/core/cv;->b(J)Lcom/twitter/model/core/cv;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_6
    :try_start_1
    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->k:Ljava/lang/String;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    or-int/2addr v5, v9

    invoke-virtual {v4, v5}, Lcom/twitter/model/core/cv;->a(I)Lcom/twitter/model/core/cv;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 238
    :goto_7
    :try_start_2
    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->l:Ljava/lang/String;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    or-int/2addr v5, v9

    invoke-virtual {v4, v5}, Lcom/twitter/model/core/cv;->b(I)Lcom/twitter/model/core/cv;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    :goto_8
    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->R:Lcom/twitter/model/json/core/JsonTwitterUser$JsonActionsArray;

    if-eqz v5, :cond_d

    .line 243
    invoke-virtual {v4}, Lcom/twitter/model/core/cv;->h()I

    move-result v5

    iget-object v6, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->R:Lcom/twitter/model/json/core/JsonTwitterUser$JsonActionsArray;

    invoke-virtual {v6}, Lcom/twitter/model/json/core/JsonTwitterUser$JsonActionsArray;->a()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/twitter/model/core/cv;->j(I)Lcom/twitter/model/core/cv;

    .line 246
    :cond_d
    iget-boolean v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->Y:Z

    if-eqz v5, :cond_e

    .line 247
    invoke-virtual {v4}, Lcom/twitter/model/core/cv;->h()I

    move-result v5

    or-int/lit16 v5, v5, 0x800

    invoke-virtual {v4, v5}, Lcom/twitter/model/core/cv;->j(I)Lcom/twitter/model/core/cv;

    .line 250
    :cond_e
    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->S:Lcom/twitter/model/geo/TwitterPlace;

    invoke-static {v5}, Lcom/twitter/util/collection/ab;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/util/collection/ab;)Lcom/twitter/model/core/cv;

    .line 252
    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->U:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {v4, v5}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/core/cv;

    .line 254
    if-eqz v0, :cond_1a

    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 255
    new-instance v5, Lcom/twitter/model/core/bo;

    invoke-direct {v5, v0}, Lcom/twitter/model/core/bo;-><init>(Lcom/twitter/model/core/bm;)V

    .line 257
    new-instance v6, Lcom/twitter/model/core/m;

    invoke-direct {v6}, Lcom/twitter/model/core/m;-><init>()V

    .line 258
    new-instance v7, Lcom/twitter/model/core/m;

    invoke-direct {v7}, Lcom/twitter/model/core/m;-><init>()V

    .line 260
    sget-object v0, Lcom/twitter/model/json/core/JsonTwitterUser;->aa:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->f:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 261
    sget-object v0, Lcom/twitter/model/json/core/JsonTwitterUser;->ab:Ljava/util/regex/Pattern;

    iget-object v9, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->f:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 263
    :goto_9
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 264
    new-instance v0, Lcom/twitter/model/core/aw;

    invoke-direct {v0}, Lcom/twitter/model/core/aw;-><init>()V

    .line 265
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/twitter/model/core/aw;->a(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/aw;

    .line 266
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/twitter/model/core/aw;->b(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/aw;

    .line 267
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/twitter/model/core/aw;->a(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/twitter/model/core/aw;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/e;

    .line 264
    invoke-virtual {v6, v0}, Lcom/twitter/model/core/m;->a(Lcom/twitter/model/core/e;)Lcom/twitter/model/core/l;

    goto :goto_9

    :cond_f
    move v0, v2

    .line 175
    goto/16 :goto_0

    .line 189
    :cond_10
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/twitter/model/core/cv;->e(J)Lcom/twitter/model/core/cv;

    goto/16 :goto_1

    .line 192
    :cond_11
    const-wide/16 v6, -0x1

    invoke-virtual {v4, v6, v7}, Lcom/twitter/model/core/cv;->e(J)Lcom/twitter/model/core/cv;

    goto/16 :goto_1

    .line 197
    :cond_12
    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->b(II)I

    move-result v0

    goto/16 :goto_2

    .line 201
    :cond_13
    invoke-static {v0, v10}, Lcom/twitter/model/core/p;->b(II)I

    move-result v0

    goto/16 :goto_3

    .line 204
    :cond_14
    const/16 v3, 0x4000

    .line 205
    invoke-static {v0, v3}, Lcom/twitter/model/core/p;->b(II)I

    move-result v0

    goto/16 :goto_4

    :cond_15
    move v3, v0

    .line 216
    goto/16 :goto_5

    .line 228
    :catch_0
    move-exception v5

    .line 229
    sget-object v5, Lcom/twitter/util/al;->b:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->j:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/twitter/util/al;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/twitter/model/core/cv;->b(J)Lcom/twitter/model/core/cv;

    goto/16 :goto_6

    .line 270
    :cond_16
    invoke-virtual {v6}, Lcom/twitter/model/core/m;->e()Z

    move-result v0

    if-nez v0, :cond_17

    .line 271
    invoke-virtual {v6}, Lcom/twitter/model/core/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    invoke-virtual {v5, v0}, Lcom/twitter/model/core/bo;->b(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    .line 274
    :cond_17
    :goto_a
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 275
    new-instance v0, Lcom/twitter/model/core/r;

    invoke-direct {v0}, Lcom/twitter/model/core/r;-><init>()V

    .line 276
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/twitter/model/core/r;->a(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/r;

    .line 277
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/twitter/model/core/r;->b(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/r;

    .line 278
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twitter/model/core/r;->a(Ljava/lang/String;)Lcom/twitter/model/core/r;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/twitter/model/core/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/e;

    .line 275
    invoke-virtual {v7, v0}, Lcom/twitter/model/core/m;->a(Lcom/twitter/model/core/e;)Lcom/twitter/model/core/l;

    goto :goto_a

    .line 281
    :cond_18
    invoke-virtual {v7}, Lcom/twitter/model/core/m;->e()Z

    move-result v0

    if-nez v0, :cond_19

    .line 282
    invoke-virtual {v7}, Lcom/twitter/model/core/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    invoke-virtual {v5, v0}, Lcom/twitter/model/core/bo;->c(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    .line 285
    :cond_19
    invoke-virtual {v5}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    .line 289
    :cond_1a
    iget-object v5, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->f:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6, v1}, Lcum;->a(Ljava/lang/String;Lcom/twitter/model/core/bm;Lcom/twitter/model/search/m;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/model/core/cv;->e(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v5

    .line 290
    invoke-virtual {v5, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    .line 293
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->V:Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserPhone;

    if-eqz v0, :cond_1b

    .line 294
    new-instance v0, Lcnf;

    invoke-direct {v0}, Lcnf;-><init>()V

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->V:Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserPhone;

    iget-object v3, v3, Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserPhone;->a:Ljava/lang/String;

    .line 296
    invoke-virtual {v0, v3}, Lcnf;->a(Ljava/lang/String;)Lcnf;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->V:Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserPhone;

    iget-boolean v3, v3, Lcom/twitter/model/json/core/JsonTwitterUser$JsonUserPhone;->b:Z

    .line 297
    invoke-virtual {v0, v3}, Lcnf;->a(Z)Lcnf;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcnf;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnd;

    .line 294
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->a(Lcnd;)Lcom/twitter/model/core/cv;

    .line 301
    :cond_1b
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->m:Lcom/twitter/model/ads/AdvertiserType;

    sget-object v3, Lcom/twitter/model/ads/AdvertiserType;->a:Lcom/twitter/model/ads/AdvertiserType;

    invoke-static {v0, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/ads/AdvertiserType;

    invoke-virtual {v4, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/ads/AdvertiserType;)Lcom/twitter/model/core/cv;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->W:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    sget-object v5, Lcom/twitter/model/businessprofiles/BusinessProfileState;->a:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 303
    invoke-static {v0, v5}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 302
    invoke-virtual {v3, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/businessprofiles/BusinessProfileState;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/core/JsonTwitterUser;->X:Lcom/twitter/model/analytics/AnalyticsType;

    sget-object v5, Lcom/twitter/model/analytics/AnalyticsType;->a:Lcom/twitter/model/analytics/AnalyticsType;

    if-ne v3, v5, :cond_1c

    .line 304
    :goto_b
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->j(Z)Lcom/twitter/model/core/cv;

    .line 306
    return-object v4

    :cond_1c
    move v1, v2

    .line 302
    goto :goto_b

    .line 239
    :catch_1
    move-exception v5

    goto/16 :goto_8

    .line 234
    :catch_2
    move-exception v5

    goto/16 :goto_7
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/twitter/model/json/core/JsonTwitterUser;->a()Lcom/twitter/model/core/cv;

    move-result-object v0

    return-object v0
.end method
