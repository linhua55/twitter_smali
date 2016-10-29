.class public Lcom/twitter/android/moments/ui/maker/dz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/el;


# instance fields
.field private final a:Lcom/twitter/util/object/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/e",
            "<",
            "Lcom/twitter/android/moments/viewmodels/q;",
            "Lcom/twitter/android/moments/ui/fullscreen/gn;",
            "Lakc;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/util/object/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/d",
            "<",
            "Lald;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/util/object/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/d",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/util/object/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/d",
            "<",
            "Lakh;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/util/object/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/d",
            "<",
            "Lakx;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/twitter/android/moments/viewmodels/r;


# direct methods
.method public constructor <init>(Lcom/twitter/util/object/e;Lcom/twitter/util/object/d;Lcom/twitter/util/object/d;Lcom/twitter/util/object/c;Lcom/twitter/util/object/d;Lcom/twitter/util/object/d;Lcom/twitter/android/moments/viewmodels/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/e",
            "<",
            "Lcom/twitter/android/moments/viewmodels/q;",
            "Lcom/twitter/android/moments/ui/fullscreen/gn;",
            "Lakc;",
            ">;",
            "Lcom/twitter/util/object/d",
            "<",
            "Lald;",
            ">;",
            "Lcom/twitter/util/object/d",
            "<",
            "Lajr;",
            ">;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            "Lajv;",
            ">;",
            "Lcom/twitter/util/object/d",
            "<",
            "Lakh;",
            ">;",
            "Lcom/twitter/util/object/d",
            "<",
            "Lakx;",
            ">;",
            "Lcom/twitter/android/moments/viewmodels/r;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/dz;->a:Lcom/twitter/util/object/e;

    .line 141
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/dz;->b:Lcom/twitter/util/object/d;

    .line 142
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/dz;->c:Lcom/twitter/util/object/d;

    .line 143
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/dz;->d:Lcom/twitter/util/object/c;

    .line 144
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/dz;->e:Lcom/twitter/util/object/d;

    .line 145
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/dz;->f:Lcom/twitter/util/object/d;

    .line 146
    iput-object p7, p0, Lcom/twitter/android/moments/ui/maker/dz;->g:Lcom/twitter/android/moments/viewmodels/r;

    .line 147
    return-void
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lalk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            "Lcom/twitter/android/moments/ui/fullscreen/gn;",
            ")",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    sget-object v0, Lcom/twitter/android/moments/ui/maker/eg;->a:[I

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized moment page type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dz;->g:Lcom/twitter/android/moments/viewmodels/r;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/viewmodels/r;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/q;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dz;->a:Lcom/twitter/util/object/e;

    invoke-interface {v1, v0, p2}, Lcom/twitter/util/object/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakc;

    .line 178
    invoke-static {p1}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lakc;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V

    .line 187
    :goto_0
    return-object v0

    .line 183
    :pswitch_1
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/af;

    .line 184
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dz;->b:Lcom/twitter/util/object/d;

    .line 185
    invoke-interface {v1}, Lcom/twitter/util/object/d;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lald;

    .line 186
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/af;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lald;->a(Lcom/twitter/model/moments/viewmodels/af;Lcom/twitter/model/core/Tweet;)V

    move-object v0, v1

    .line 187
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/app/Activity;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)Lcom/twitter/android/moments/ui/maker/dz;
    .locals 12

    .prologue
    .line 62
    new-instance v7, Lcom/twitter/android/moments/ui/maker/ea;

    invoke-direct {v7, p1}, Lcom/twitter/android/moments/ui/maker/ea;-><init>(Landroid/view/LayoutInflater;)V

    .line 72
    new-instance v0, Lcom/twitter/android/moments/ui/maker/eb;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/eb;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)V

    .line 82
    new-instance v10, Lcom/twitter/android/moments/ui/maker/ec;

    invoke-direct {v10, p0, p1}, Lcom/twitter/android/moments/ui/maker/ec;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;)V

    .line 91
    new-instance v11, Lcom/twitter/android/moments/ui/maker/ed;

    invoke-direct {v11, p1}, Lcom/twitter/android/moments/ui/maker/ed;-><init>(Landroid/view/LayoutInflater;)V

    .line 100
    new-instance v1, Lcom/twitter/android/moments/ui/maker/ee;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/moments/ui/maker/ee;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)V

    .line 110
    new-instance v8, Lcom/twitter/android/moments/ui/maker/ef;

    invoke-direct {v8, p1}, Lcom/twitter/android/moments/ui/maker/ef;-><init>(Landroid/view/LayoutInflater;)V

    .line 119
    new-instance v2, Lcom/twitter/android/moments/ui/maker/dz;

    .line 126
    invoke-static {}, Lcom/twitter/android/moments/viewmodels/r;->a()Lcom/twitter/android/moments/viewmodels/r;

    move-result-object v9

    move-object v3, v7

    move-object v4, v0

    move-object v5, v10

    move-object v6, v11

    move-object v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/twitter/android/moments/ui/maker/dz;-><init>(Lcom/twitter/util/object/e;Lcom/twitter/util/object/d;Lcom/twitter/util/object/d;Lcom/twitter/util/object/c;Lcom/twitter/util/object/d;Lcom/twitter/util/object/d;Lcom/twitter/android/moments/viewmodels/r;)V

    .line 119
    return-object v2
.end method

.method private b(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lalk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ")",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dz;->c:Lcom/twitter/util/object/d;

    invoke-interface {v0}, Lcom/twitter/util/object/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 201
    invoke-static {p1}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lajr;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V

    .line 227
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dz;->d:Lcom/twitter/util/object/c;

    invoke-interface {v0, p1}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 205
    invoke-static {p1}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lajv;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 210
    :cond_1
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/y;

    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 212
    sget-object v0, Lcom/twitter/android/moments/ui/maker/eg;->a:[I

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dz;->f:Lcom/twitter/util/object/d;

    .line 225
    invoke-interface {v0}, Lcom/twitter/util/object/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakx;

    .line 226
    invoke-static {p1}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lakx;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 216
    :pswitch_0
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    .line 217
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dz;->e:Lcom/twitter/util/object/d;

    .line 218
    invoke-interface {v1}, Lcom/twitter/util/object/d;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakh;

    .line 219
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lakh;->a(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/model/core/Tweet;)V

    move-object v0, v1

    .line 220
    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/dz;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 155
    .line 156
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/dz;->b(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lalk;

    move-result-object v1

    .line 157
    instance-of v0, v1, Lcom/twitter/android/moments/ui/fullscreen/gn;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/gn;

    .line 162
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/moments/ui/maker/dz;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lalk;

    move-result-object v0

    .line 163
    const/4 v2, 0x1

    new-array v2, v2, [Lalk;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/gn;->a:Lcom/twitter/android/moments/ui/fullscreen/gn;

    goto :goto_0
.end method
