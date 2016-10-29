.class Laoe;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lcyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcyc",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcyc",
            "<",
            "Lcom/twitter/ui/widget/TypefacesTextView;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcyc",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcyc",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const v0, 0x7f13039c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laoe;->a:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f13039b

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 165
    new-instance v1, Lcyc;

    invoke-direct {v1, v0}, Lcyc;-><init>(Landroid/view/ViewStub;)V

    iput-object v1, p0, Laoe;->b:Lcyc;

    .line 166
    const v0, 0x7f13039d

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 168
    new-instance v1, Lcyc;

    invoke-direct {v1, v0}, Lcyc;-><init>(Landroid/view/ViewStub;)V

    iput-object v1, p0, Laoe;->c:Lcyc;

    .line 169
    const v0, 0x7f130398

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 171
    new-instance v1, Lcyc;

    invoke-direct {v1, v0}, Lcyc;-><init>(Landroid/view/ViewStub;)V

    iput-object v1, p0, Laoe;->d:Lcyc;

    .line 172
    const v0, 0x7f130399

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 174
    new-instance v1, Lcyc;

    invoke-direct {v1, v0}, Lcyc;-><init>(Landroid/view/ViewStub;)V

    iput-object v1, p0, Laoe;->e:Lcyc;

    .line 175
    const v0, 0x7f1300e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laoe;->f:Landroid/widget/ImageView;

    .line 176
    return-void
.end method
