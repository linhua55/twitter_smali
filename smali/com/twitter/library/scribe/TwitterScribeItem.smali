.class public Lcom/twitter/library/scribe/TwitterScribeItem;
.super Lcom/twitter/library/scribe/ScribeItem;
.source "Twttr"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:J

.field public E:J

.field public F:Ljava/lang/String;

.field public G:J

.field public H:Ljava/lang/String;

.field public I:I

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:J

.field public N:Ljava/lang/Boolean;

.field public O:Ljava/lang/String;

.field public P:J

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:J

.field public aa:J

.field public ab:I

.field public ac:J

.field public ad:J

.field public ae:J

.field public af:I

.field public ag:J

.field public ah:I

.field public ai:Ljava/lang/String;

.field public aj:J

.field public ak:Ljava/lang/String;

.field public al:Lcom/twitter/library/scribe/aj;

.field public am:Lcom/twitter/library/scribe/ScribeGeoDetails;

.field public an:Lcom/twitter/library/scribe/MomentScribeDetails;

.field public ao:Lcom/twitter/library/scribe/e;

.field public ap:Lcom/twitter/library/scribe/a;

.field public aq:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

.field public ar:Lcom/twitter/library/scribe/bb;

.field public as:Lcom/twitter/model/timeline/al;

.field public at:Lcom/twitter/library/scribe/NativeCardEvent;

.field public au:I

.field public av:Ljava/lang/String;

.field public aw:Ljava/lang/String;

.field public ax:Ljava/lang/Boolean;

.field public ay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/twitter/library/scribe/bm;

    invoke-direct {v0}, Lcom/twitter/library/scribe/bm;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/TwitterScribeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 216
    invoke-direct {p0}, Lcom/twitter/library/scribe/ScribeItem;-><init>()V

    .line 127
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 129
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 130
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->d:J

    .line 133
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 134
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    .line 135
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    .line 139
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    .line 151
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->y:I

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    .line 156
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->D:J

    .line 157
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->E:J

    .line 163
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->G:J

    .line 165
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->I:I

    .line 169
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->M:J

    .line 172
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->P:J

    .line 183
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aa:J

    .line 184
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ab:I

    .line 185
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ac:J

    .line 186
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ad:J

    .line 187
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ae:J

    .line 188
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->af:I

    .line 189
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ag:J

    .line 192
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ah:I

    .line 194
    iput-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aj:J

    .line 208
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->au:I

    .line 214
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ay:Ljava/util/List;

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    .line 734
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/ScribeItem;-><init>(Landroid/os/Parcel;)V

    .line 127
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 129
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 130
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->d:J

    .line 133
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 134
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    .line 135
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    .line 139
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    .line 151
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->y:I

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    .line 156
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->D:J

    .line 157
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->E:J

    .line 163
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->G:J

    .line 165
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->I:I

    .line 169
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->M:J

    .line 172
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->P:J

    .line 183
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aa:J

    .line 184
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ab:I

    .line 185
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ac:J

    .line 186
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ad:J

    .line 187
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ae:J

    .line 188
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->af:I

    .line 189
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ag:J

    .line 192
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ah:I

    .line 194
    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aj:J

    .line 208
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->au:I

    .line 214
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ay:Ljava/util/List;

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->d:J

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->f:Ljava/lang/String;

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->j:Z

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->k:Ljava/lang/String;

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->l:Ljava/lang/String;

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->o:Ljava/lang/String;

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->p:Ljava/lang/String;

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->q:Ljava/lang/String;

    .line 752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->r:Z

    .line 753
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->s:Ljava/lang/String;

    .line 754
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->y:I

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->A:Ljava/lang/String;

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->B:Ljava/lang/String;

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->z:Ljava/lang/String;

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    :goto_2
    if-ge v2, v0, :cond_2

    .line 763
    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 744
    goto :goto_0

    :cond_1
    move v1, v2

    .line 752
    goto :goto_1

    .line 765
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->D:J

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->E:J

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->F:Ljava/lang/String;

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->H:Ljava/lang/String;

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->G:J

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->I:I

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->J:Ljava/lang/String;

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->K:Ljava/lang/String;

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->L:Ljava/lang/String;

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->M:J

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    .line 776
    new-instance v0, Lcom/twitter/library/scribe/aj;

    invoke-direct {v0, p1}, Lcom/twitter/library/scribe/aj;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->al:Lcom/twitter/library/scribe/aj;

    .line 778
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->N:Ljava/lang/Boolean;

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->P:J

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->O:Ljava/lang/String;

    .line 781
    const-class v0, Lcom/twitter/library/scribe/ScribeGeoDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeGeoDetails;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Q:Ljava/lang/String;

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->R:Ljava/lang/String;

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->S:Ljava/lang/String;

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->T:Ljava/lang/String;

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->U:Ljava/lang/String;

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->V:Ljava/lang/String;

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->W:Ljava/lang/String;

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->X:Ljava/lang/String;

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Y:Ljava/lang/String;

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Z:Ljava/lang/String;

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aa:J

    .line 793
    const-class v0, Lcom/twitter/library/scribe/NativeCardEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/NativeCardEvent;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->at:Lcom/twitter/library/scribe/NativeCardEvent;

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ah:I

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ai:Ljava/lang/String;

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aj:J

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ak:Ljava/lang/String;

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ab:I

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ac:J

    .line 800
    const-class v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->an:Lcom/twitter/library/scribe/MomentScribeDetails;

    .line 801
    const-class v0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aq:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    .line 802
    sget-object v0, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->u:Ljava/lang/String;

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->t:Ljava/lang/String;

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->au:I

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->av:Ljava/lang/String;

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ax:Ljava/lang/Boolean;

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aw:Ljava/lang/String;

    .line 809
    sget-object v0, Lcom/twitter/library/scribe/e;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/e;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ao:Lcom/twitter/library/scribe/e;

    .line 810
    sget-object v0, Lcom/twitter/library/scribe/a;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/a;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ap:Lcom/twitter/library/scribe/a;

    .line 811
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ay:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 812
    sget-object v0, Lcom/twitter/library/scribe/bb;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/bb;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ar:Lcom/twitter/library/scribe/bb;

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ad:J

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ae:J

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->af:I

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ag:J

    .line 817
    return-void
.end method

.method private static a(Ljava/lang/Boolean;)B
    .locals 1

    .prologue
    .line 1333
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/timeline/aq;)Lcom/twitter/library/scribe/ScribeItem;
    .locals 4

    .prologue
    .line 699
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 700
    const/16 v1, 0x1e

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 701
    iget-object v1, p0, Lcom/twitter/model/timeline/aq;->a:Lctd;

    iget-object v1, v1, Lctd;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 702
    return-object v0
.end method

.method public static a(Lcsz;)Lcom/twitter/library/scribe/ScribeItem;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 707
    const-string/jumbo v0, "tweet"

    iget-object v1, p0, Lcsz;->b:Lctb;

    iget-object v1, v1, Lctb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 709
    iput v4, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 710
    iget-object v0, p0, Lcsz;->b:Lctb;

    iget-wide v2, v0, Lctb;->a:J

    iput-wide v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 711
    iget-object v0, p0, Lcsz;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->w:Lcss;

    iget-object v0, v0, Lcss;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcsz;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->w:Lcss;

    iget-object v0, v0, Lcss;->l:Ljava/util/Set;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->ay:Ljava/util/List;

    .line 713
    new-instance v0, Lcom/twitter/library/scribe/d;

    invoke-direct {v0}, Lcom/twitter/library/scribe/d;-><init>()V

    iget-object v2, p0, Lcsz;->b:Lctb;

    iget-wide v2, v2, Lctb;->f:J

    .line 714
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/d;->b(J)Lcom/twitter/library/scribe/d;

    move-result-object v0

    .line 715
    iget-object v2, p0, Lcsz;->b:Lctb;

    iget-object v2, v2, Lctb;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 716
    iget-object v2, p0, Lcsz;->b:Lctb;

    iget-object v2, v2, Lctb;->d:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/d;->a(J)Lcom/twitter/library/scribe/d;

    .line 718
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/library/scribe/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/a;

    iput-object v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->ap:Lcom/twitter/library/scribe/a;

    move-object v0, v1

    .line 721
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 516
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 517
    const/16 v1, 0x10

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 518
    const/4 v1, 0x0

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    .line 519
    const-string/jumbo v1, "single"

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 520
    return-object v0
.end method

.method public static a(J)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 577
    const/16 v1, 0x1e

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 578
    iput-wide p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 579
    return-object v0
.end method

.method public static a(JLcss;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 8

    .prologue
    .line 446
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/model/timeline/al;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLcss;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/model/timeline/al;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 458
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 459
    iput-wide p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 460
    const/4 v1, 0x3

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 461
    iput-object p4, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 462
    iput p5, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 463
    if-eqz p2, :cond_0

    .line 464
    iget-object v1, p2, Lcss;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    .line 465
    iget-object v1, p2, Lcss;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->f:Ljava/lang/String;

    .line 467
    :cond_0
    iput-object p3, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->k:Ljava/lang/String;

    .line 468
    iput-object p6, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 470
    return-object v0
.end method

.method public static a(JLcss;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/timeline/al;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 8

    .prologue
    .line 452
    const/4 v5, -0x1

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/model/timeline/al;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 929
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 930
    const/16 v1, 0x1b

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 931
    iput-wide p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 932
    iput-object p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->k:Ljava/lang/String;

    .line 933
    return-object v0
.end method

.method public static a(JLjava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 426
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 427
    iput-wide p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 432
    iput-object p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 433
    iput-object p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    .line 434
    iput p3, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 435
    iput p4, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 436
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 677
    const/16 v1, 0x19

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 678
    if-eqz p1, :cond_0

    .line 679
    invoke-direct {v0, p1, p0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lclw;Landroid/content/Context;)V

    .line 681
    :cond_0
    iput-object p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->u:Ljava/lang/String;

    .line 682
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 728
    invoke-static {p0, p2, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 729
    iput-object p1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->aq:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    .line 730
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 231
    new-instance v9, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v9}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 232
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->p:J

    iput-wide v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 233
    iput v8, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 234
    iput-object p3, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/twitter/library/scribe/aj;

    .line 236
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {v1, v2}, Lcug;->d(Ljava/lang/Iterable;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 237
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->r(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->t(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->u(Lcom/twitter/model/core/Tweet;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->v(Lcom/twitter/model/core/Tweet;)I

    move-result v6

    .line 239
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ak()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/scribe/aj;-><init>(ILjava/lang/String;Ljava/lang/String;JIZ)V

    iput-object v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->al:Lcom/twitter/library/scribe/aj;

    .line 240
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/card/bc;->e(Lclw;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    invoke-direct {v9, v0, p0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lclw;Landroid/content/Context;)V

    .line 249
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    if-eq v0, v10, :cond_7

    if-eqz p2, :cond_7

    .line 251
    invoke-virtual {p2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->j:Z

    .line 252
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->q:J

    iput-wide v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->d:J

    .line 255
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    .line 257
    iget-object v1, v0, Lcss;->c:Ljava/lang/String;

    iput-object v1, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    .line 258
    iget-object v0, v0, Lcss;->d:Ljava/lang/String;

    iput-object v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->f:Ljava/lang/String;

    .line 261
    :cond_2
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    iput-object v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 263
    return-object v9

    .line 242
    :cond_3
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    const/4 v0, 0x2

    iput v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->i()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    :cond_5
    const/4 v0, 0x3

    iput v0, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    goto :goto_0

    .line 247
    :cond_6
    iput v10, v9, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    goto :goto_0

    :cond_7
    move v0, v8

    .line 251
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/ay;Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 9

    .prologue
    .line 337
    new-instance v8, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v8}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 338
    iget-wide v0, p1, Lcom/twitter/model/core/ay;->e:J

    iput-wide v0, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 339
    const/16 v0, 0x17

    iput v0, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 340
    const-string/jumbo v0, "quoted_tweet"

    iput-object v0, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 341
    new-instance v0, Lcom/twitter/library/scribe/aj;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-object v1, v1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    sget-object v2, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    .line 342
    invoke-static {v1, v2}, Lcug;->d(Ljava/lang/Iterable;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 343
    invoke-static {p2}, Lcom/twitter/library/av/playback/bm;->r(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/twitter/library/av/playback/bm;->t(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {p2}, Lcom/twitter/library/av/playback/bm;->u(Lcom/twitter/model/core/Tweet;)J

    move-result-wide v4

    invoke-static {p2}, Lcom/twitter/library/av/playback/bm;->v(Lcom/twitter/model/core/Tweet;)I

    move-result v6

    .line 345
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ak()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/scribe/aj;-><init>(ILjava/lang/String;Ljava/lang/String;JIZ)V

    iput-object v0, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->al:Lcom/twitter/library/scribe/aj;

    .line 346
    iget-object v0, p1, Lcom/twitter/model/core/ay;->k:Lclw;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/core/ay;->k:Lclw;

    invoke-virtual {v0, v1}, Lcom/twitter/library/card/bc;->e(Lclw;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p1, Lcom/twitter/model/core/ay;->k:Lclw;

    invoke-direct {v8, v0, p0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lclw;Landroid/content/Context;)V

    .line 355
    :goto_0
    iget-object v0, p1, Lcom/twitter/model/core/ay;->m:Lcss;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p1, Lcom/twitter/model/core/ay;->m:Lcss;

    .line 357
    iget-object v1, v0, Lcss;->c:Ljava/lang/String;

    iput-object v1, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    .line 358
    iget-object v0, v0, Lcss;->d:Ljava/lang/String;

    iput-object v0, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->f:Ljava/lang/String;

    .line 360
    :cond_0
    return-object v8

    .line 348
    :cond_1
    iget-object v0, p1, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    sget-object v1, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {v0, v1}, Lcug;->c(Ljava/lang/Iterable;Lcom/twitter/util/math/Size;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    const/4 v0, 0x2

    iput v0, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p1, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v0}, Lcug;->f(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    const/4 v0, 0x3

    iput v0, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    goto :goto_0

    .line 353
    :cond_3
    const/4 v0, -0x1

    iput v0, v8, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lclm;J)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 5

    .prologue
    .line 476
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 478
    const/4 v1, 0x3

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 479
    iput-object p1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->l:Ljava/lang/String;

    .line 480
    const-string/jumbo v1, "app_id"

    invoke-static {v1, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    .line 481
    iget-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 482
    iget-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/twitter/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    const/4 v1, 0x2

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    .line 488
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_1

    .line 489
    iput-wide p3, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 491
    :cond_1
    return-object v0

    .line 485
    :cond_2
    const/4 v1, 0x1

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    goto :goto_0
.end method

.method public static a(Lcom/twitter/library/scribe/MomentScribeDetails;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 6

    .prologue
    .line 598
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 599
    iput-object p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->an:Lcom/twitter/library/scribe/MomentScribeDetails;

    .line 600
    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 601
    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->b:J

    iput-wide v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 602
    const/4 v1, 0x0

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 604
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 4

    .prologue
    .line 370
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 371
    invoke-virtual {p0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 372
    const/4 v1, 0x3

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 373
    iget-object v1, p0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 375
    return-object v0
.end method

.method public static a(Lcom/twitter/model/core/bv;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 4

    .prologue
    .line 583
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 584
    invoke-virtual {p0}, Lcom/twitter/model/core/bv;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 585
    invoke-virtual {p0}, Lcom/twitter/model/core/bv;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Lcom/twitter/model/core/bv;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 587
    return-object v0
.end method

.method public static a(Lcom/twitter/model/dms/bo;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 278
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->l()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 279
    const/4 v1, 0x6

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 280
    iput-object p1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->C()Lclw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->C()Lclw;

    move-result-object v1

    invoke-virtual {v1}, Lclw;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->l:Ljava/lang/String;

    .line 285
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/twitter/model/people/am;Lcom/twitter/model/people/g;I)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 3

    .prologue
    .line 666
    iget-object v0, p0, Lcom/twitter/model/people/am;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 667
    iput p2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->au:I

    .line 668
    invoke-interface {p1}, Lcom/twitter/model/people/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->av:Ljava/lang/String;

    .line 669
    invoke-interface {p1}, Lcom/twitter/model/people/g;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->aw:Ljava/lang/String;

    .line 670
    new-instance v0, Lcom/twitter/model/timeline/an;

    invoke-direct {v0}, Lcom/twitter/model/timeline/an;-><init>()V

    iget-object v2, p0, Lcom/twitter/model/people/am;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/an;->d(Ljava/lang/String;)Lcom/twitter/model/timeline/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/timeline/an;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    iput-object v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 671
    return-object v1
.end method

.method public static a(Lcom/twitter/model/people/g;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 650
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 651
    invoke-interface {p0}, Lcom/twitter/model/people/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->av:Ljava/lang/String;

    .line 652
    invoke-interface {p0}, Lcom/twitter/model/people/g;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->aw:Ljava/lang/String;

    .line 653
    return-object v0
.end method

.method public static a(Lcom/twitter/model/people/g;Z)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 658
    invoke-static {p0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/model/people/g;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 659
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->ax:Ljava/lang/Boolean;

    .line 660
    return-object v0
.end method

.method public static a(Lcpy;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 8

    .prologue
    .line 608
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 609
    iget-wide v2, p0, Lcpy;->a:J

    iput-wide v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 610
    const/16 v0, 0x20

    iput v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 612
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v2

    .line 613
    iget-object v0, p0, Lcpy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqa;

    .line 614
    new-instance v4, Lcom/twitter/library/scribe/bh;

    invoke-direct {v4}, Lcom/twitter/library/scribe/bh;-><init>()V

    invoke-virtual {v0}, Lcqa;->a()Lcpf;

    move-result-object v0

    iget-wide v6, v0, Lcpf;->h:J

    invoke-virtual {v4, v6, v7}, Lcom/twitter/library/scribe/bh;->a(J)Lcom/twitter/library/scribe/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/bh;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/bd;

    invoke-direct {v0}, Lcom/twitter/library/scribe/bd;-><init>()V

    .line 617
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/bd;->a(Ljava/util/List;)Lcom/twitter/library/scribe/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/bd;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/bb;

    iput-object v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->ar:Lcom/twitter/library/scribe/bb;

    .line 619
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 496
    iput-object p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 497
    const/4 v1, 0x3

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 498
    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeItem;->a()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 525
    iput-object p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 526
    invoke-static {p1}, Lcom/twitter/model/topic/TwitterTopic;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    .line 527
    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 441
    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLjava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 502
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 503
    iput-object p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 504
    const/16 v1, 0xc

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 505
    iput-object p1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 506
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 864
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 865
    if-eqz p1, :cond_0

    .line 866
    iput-object p1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    .line 868
    :cond_0
    if-eqz p0, :cond_1

    .line 869
    iput-object p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 870
    const/16 v1, 0x10

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 872
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 873
    invoke-static {p2}, Lcom/twitter/model/topic/TwitterTopic;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 875
    :cond_2
    return-object v0
.end method

.method private static a(B)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1316
    packed-switch p0, :pswitch_data_0

    .line 1324
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1318
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1321
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/util/List;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpo;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v2

    .line 624
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v3

    .line 626
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpo;

    .line 627
    iget-object v1, v0, Lcpo;->b:Lcpf;

    iget-wide v6, v1, Lcpf;->g:J

    .line 628
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 630
    iput-wide v6, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 631
    const/16 v5, 0x20

    iput v5, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 632
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v5, Lcom/twitter/library/scribe/bh;

    invoke-direct {v5}, Lcom/twitter/library/scribe/bh;-><init>()V

    iget-object v0, v0, Lcpo;->b:Lcpf;

    iget-wide v6, v0, Lcpf;->h:J

    .line 636
    invoke-virtual {v5, v6, v7}, Lcom/twitter/library/scribe/bh;->a(J)Lcom/twitter/library/scribe/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/bh;->q()Ljava/lang/Object;

    move-result-object v0

    .line 635
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 640
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 641
    new-instance v5, Lcom/twitter/library/scribe/bd;

    invoke-direct {v5}, Lcom/twitter/library/scribe/bd;-><init>()V

    .line 642
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 641
    invoke-virtual {v5, v1}, Lcom/twitter/library/scribe/bd;->a(Ljava/util/List;)Lcom/twitter/library/scribe/bd;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Lcom/twitter/library/scribe/bd;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/bb;

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->ar:Lcom/twitter/library/scribe/bb;

    goto :goto_1

    .line 645
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/scribe/bj;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/scribe/bj;",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 322
    invoke-interface {p1, p0, p2, p3, p4}, Lcom/twitter/library/scribe/bj;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 323
    invoke-static {v0, p0, p2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/util/collection/r;Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    .line 324
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private a(Lclw;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 379
    const/4 v0, 0x6

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    .line 380
    const-string/jumbo v0, "Android-12"

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->o:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Lclw;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->l:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lclw;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->p:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Lclw;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->q:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->s:Ljava/lang/String;

    .line 385
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/card/bc;->a(Lclw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->r:Z

    .line 386
    invoke-virtual {p1}, Lclw;->j()Ljava/util/Map;

    move-result-object v2

    .line 387
    if-eqz v2, :cond_6

    .line 388
    const-string/jumbo v0, "app_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcls;

    invoke-static {v0}, Lcls;->a(Lcls;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    .line 390
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 391
    invoke-static {p2, v0}, Lcom/twitter/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    .line 397
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcls;

    .line 399
    iget-object v1, v0, Lcls;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, v0, Lcls;->c:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 401
    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    iget-object v4, v0, Lcls;->d:Ljava/lang/String;

    iget-object v0, v0, Lcls;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 394
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    goto :goto_0

    .line 402
    :cond_3
    iget-object v1, v0, Lcls;->c:Ljava/lang/Object;

    instance-of v1, v1, Lcma;

    if-eqz v1, :cond_4

    .line 403
    iget-object v1, v0, Lcls;->c:Ljava/lang/Object;

    check-cast v1, Lcma;

    .line 404
    iget-object v1, v1, Lcma;->a:Ljava/lang/String;

    .line 405
    if-eqz v1, :cond_1

    .line 406
    iget-object v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    iget-object v0, v0, Lcls;->d:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 408
    :cond_4
    iget-object v1, v0, Lcls;->c:Ljava/lang/Object;

    instance-of v1, v1, Lcom/twitter/model/card/property/ImageSpec;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, v0, Lcls;->c:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/model/card/property/ImageSpec;

    .line 410
    iget-object v1, v1, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    .line 411
    if-eqz v1, :cond_1

    .line 412
    iget-object v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    iget-object v0, v0, Lcls;->d:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 417
    :cond_5
    const-string/jumbo v0, "card_url"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcls;

    invoke-static {v0}, Lcls;->a(Lcls;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 419
    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->s:Ljava/lang/String;

    .line 422
    :cond_6
    return-void
.end method

.method private static a(Lcom/twitter/util/collection/r;Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/r",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/twitter/model/core/Tweet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1301
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p2, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    invoke-static {p1, v0, p2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1304
    :cond_0
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    iget-wide v0, p2, Lcom/twitter/model/core/Tweet;->C:J

    .line 1306
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/library/scribe/MomentScribeDetails;->a(JLclw;)Lcom/twitter/library/scribe/MomentScribeDetails;

    move-result-object v0

    .line 1305
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/library/scribe/MomentScribeDetails;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1308
    :cond_1
    return-void
.end method

.method public static b()Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 591
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 592
    const/16 v1, 0x13

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 593
    new-instance v1, Lcom/twitter/library/scribe/ScribeGeoDetails;

    invoke-direct {v1}, Lcom/twitter/library/scribe/ScribeGeoDetails;-><init>()V

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    .line 594
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 687
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 688
    const/4 v1, 0x6

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 689
    if-eqz p1, :cond_0

    .line 690
    invoke-virtual {p1}, Lclw;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->l:Ljava/lang/String;

    .line 693
    :cond_0
    iput-object p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->u:Ljava/lang/String;

    .line 694
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 511
    iput-object p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 512
    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 543
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 544
    const/16 v1, 0x11

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 545
    iput-object p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 546
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 547
    add-int/lit8 v1, p1, 0x1

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 549
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 302
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 303
    invoke-static {v0, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/util/collection/r;Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    .line 304
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 537
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 538
    iput-object p0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->t:Ljava/lang/String;

    .line 539
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeItem;
    .locals 4

    .prologue
    .line 569
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 570
    const/16 v1, 0x1c

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 571
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 572
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 1291
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1292
    iput p1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    .line 1293
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->at:Lcom/twitter/library/scribe/NativeCardEvent;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->at:Lcom/twitter/library/scribe/NativeCardEvent;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/NativeCardEvent;->a(I)V

    .line 1297
    :cond_0
    return-void
.end method

.method public a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v8, -0x1

    const-wide/16 v6, -0x1

    .line 1028
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1029
    const-string/jumbo v0, "id"

    iget-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1032
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_1
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    if-eq v0, v8, :cond_2

    .line 1035
    const-string/jumbo v0, "item_type"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1037
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1038
    const-string/jumbo v0, "promoted_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1041
    const-string/jumbo v0, "disclosure_type"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_4
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->d:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    .line 1044
    const-string/jumbo v0, "retweeting_tweet_id"

    iget-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->d:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1046
    :cond_5
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    if-eq v0, v8, :cond_6

    .line 1047
    const-string/jumbo v0, "position"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1049
    :cond_6
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->au:I

    if-eq v0, v8, :cond_7

    .line 1050
    const-string/jumbo v0, "user_index"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->au:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1052
    :cond_7
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->av:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1053
    const-string/jumbo v0, "people_module_name"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->av:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_8
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aw:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1056
    const-string/jumbo v0, "people_module_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_9
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ax:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 1059
    const-string/jumbo v0, "is_compact"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ax:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 1061
    :cond_a
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    if-eq v0, v8, :cond_b

    .line 1062
    const-string/jumbo v0, "cursor"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1064
    :cond_b
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    if-eq v0, v8, :cond_c

    .line 1065
    const-string/jumbo v0, "card_type"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1066
    const-string/jumbo v0, "pre_expanded"

    iget-boolean v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 1067
    const-string/jumbo v0, "forward_card_pre_expanded"

    iget-boolean v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->r:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 1069
    :cond_c
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->k:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1070
    const-string/jumbo v0, "token"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :cond_d
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->l:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1073
    const-string/jumbo v0, "card_name"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_e
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    if-eq v0, v8, :cond_f

    .line 1076
    const-string/jumbo v0, "publisher_app_install_status"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1078
    :cond_f
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1079
    const-string/jumbo v0, "publisher_app_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :cond_10
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->o:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1082
    const-string/jumbo v0, "card_platform_key"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_11
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->p:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 1085
    const-string/jumbo v0, "audience_name"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->q:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 1087
    const-string/jumbo v0, "audience_bucket"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_12
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->u:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 1091
    const-string/jumbo v0, "preview_type"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_13
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->s:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1094
    const-string/jumbo v0, "card_url"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_14
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->t:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1097
    const-string/jumbo v0, "redirect_hop_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 1099
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 1102
    :cond_15
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1103
    const-string/jumbo v0, "description"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_16
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1106
    const-string/jumbo v0, "item_query"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_17
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 1109
    const-string/jumbo v0, "entity_type"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :cond_18
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->y:I

    if-eq v0, v8, :cond_19

    .line 1112
    const-string/jumbo v0, "tweet_count"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->y:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1114
    :cond_19
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->B:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 1115
    const-string/jumbo v0, "story_source"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_1a
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->A:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 1118
    const-string/jumbo v0, "story_type"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_1b
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->z:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 1121
    const-string/jumbo v0, "impression_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_1c
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :cond_1d
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->D:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1e

    .line 1127
    const-string/jumbo v0, "visibility_start"

    iget-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->D:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1129
    :cond_1e
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->E:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1f

    .line 1130
    const-string/jumbo v0, "visibility_end"

    iget-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->E:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1132
    :cond_1f
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->F:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 1133
    const-string/jumbo v0, "video_uuid"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_20
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->H:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 1136
    const-string/jumbo v0, "video_type"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_21
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->G:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_22

    .line 1139
    const-string/jumbo v0, "video_owner_id"

    iget-wide v4, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->G:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1141
    :cond_22
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->I:I

    if-eq v0, v8, :cond_23

    .line 1142
    const-string/jumbo v1, "video_is_muted"

    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->I:I

    if-ne v0, v2, :cond_48

    move v0, v2

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 1144
    :cond_23
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->J:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 1145
    const-string/jumbo v0, "error_message"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_24
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->K:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 1148
    const-string/jumbo v0, "content_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->K:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_25
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->L:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1151
    const-string/jumbo v0, "playlist_url"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->L:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_26
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->M:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_27

    .line 1154
    const-string/jumbo v0, "playback_lapse_ms"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->M:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1156
    :cond_27
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->N:Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    .line 1157
    const-string/jumbo v0, "is_replay"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->N:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 1159
    :cond_28
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->O:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 1160
    const-string/jumbo v0, "connection_type"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->O:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :cond_29
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->P:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2a

    .line 1163
    const-string/jumbo v0, "latency"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->P:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1165
    :cond_2a
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->al:Lcom/twitter/library/scribe/aj;

    if-eqz v0, :cond_2b

    .line 1166
    const-string/jumbo v0, "media_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->al:Lcom/twitter/library/scribe/aj;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/aj;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1169
    :cond_2b
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    if-eqz v0, :cond_2c

    .line 1170
    const-string/jumbo v0, "geo_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/ScribeGeoDetails;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1173
    :cond_2c
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->an:Lcom/twitter/library/scribe/MomentScribeDetails;

    if-eqz v0, :cond_2d

    .line 1174
    const-string/jumbo v0, "moments_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->an:Lcom/twitter/library/scribe/MomentScribeDetails;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1177
    :cond_2d
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aq:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    if-eqz v0, :cond_2e

    .line 1178
    const-string/jumbo v0, "live_video_event_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aq:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1181
    :cond_2e
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Q:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 1182
    const-string/jumbo v0, "artist_name"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_2f
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->R:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 1185
    const-string/jumbo v0, "integration_partner"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->R:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    :cond_30
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->S:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 1188
    const-string/jumbo v0, "card_title"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->S:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :cond_31
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->T:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 1191
    const-string/jumbo v0, "image_url"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_32
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->U:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 1194
    const-string/jumbo v0, "artist_handle"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->U:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_33
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->V:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 1197
    const-string/jumbo v0, "playlist_uuid"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->V:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_34
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->W:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 1200
    const-string/jumbo v0, "track_uuid"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->W:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_35
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->X:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 1203
    const-string/jumbo v0, "cta_url"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->X:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_36
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Y:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 1206
    const-string/jumbo v0, "play_store_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_37
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Z:Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 1209
    const-string/jumbo v0, "play_store_name"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :cond_38
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aa:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_39

    .line 1212
    const-string/jumbo v0, "publisher_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aa:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1214
    :cond_39
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ah:I

    if-eq v0, v8, :cond_3a

    .line 1215
    const-string/jumbo v0, "dynamic_preroll_type"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ah:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1217
    :cond_3a
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ai:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 1218
    const-string/jumbo v0, "preroll_uuid"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ai:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :cond_3b
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aj:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3c

    .line 1221
    const-string/jumbo v0, "preroll_owner_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aj:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1223
    :cond_3c
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ak:Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 1224
    const-string/jumbo v0, "video_analytics_scribe_passthrough"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ak:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_3d
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ab:I

    if-eq v0, v8, :cond_3e

    .line 1227
    const-string/jumbo v0, "player_mode"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ab:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1229
    :cond_3e
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ac:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3f

    .line 1230
    const-string/jumbo v0, "video_ad_skip_time_ms"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ac:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1232
    :cond_3f
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_44

    .line 1233
    const-string/jumbo v0, "suggestion_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 1235
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->f:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 1236
    const-string/jumbo v0, "type_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_40
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->d:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 1239
    const-string/jumbo v0, "source_data"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_41
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->c:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 1242
    const-string/jumbo v0, "controller_data"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :cond_42
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->b:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 1245
    const-string/jumbo v0, "suggestion_type"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_43
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 1249
    :cond_44
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ao:Lcom/twitter/library/scribe/e;

    if-eqz v0, :cond_45

    .line 1250
    const-string/jumbo v0, "slot_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 1252
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ao:Lcom/twitter/library/scribe/e;

    iget-object v1, v1, Lcom/twitter/library/scribe/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 1255
    :cond_45
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ap:Lcom/twitter/library/scribe/a;

    if-eqz v0, :cond_46

    .line 1256
    const-string/jumbo v0, "ad_entity_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ap:Lcom/twitter/library/scribe/a;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/a;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1259
    :cond_46
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ar:Lcom/twitter/library/scribe/bb;

    if-eqz v0, :cond_47

    .line 1260
    const-string/jumbo v0, "sticker_group_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ar:Lcom/twitter/library/scribe/bb;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/bb;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1263
    :cond_47
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ay:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1264
    const-string/jumbo v0, "dedupe_ids"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 1266
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1267
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 1142
    :cond_48
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1269
    :cond_49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 1271
    :cond_4a
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->at:Lcom/twitter/library/scribe/NativeCardEvent;

    if-eqz v0, :cond_4b

    .line 1272
    const-string/jumbo v0, "card_event"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->at:Lcom/twitter/library/scribe/NativeCardEvent;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/NativeCardEvent;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1275
    :cond_4b
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ad:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4c

    .line 1276
    const-string/jumbo v0, "start_program_date_time_millis"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ad:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1278
    :cond_4c
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ae:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4d

    .line 1279
    const-string/jumbo v0, "end_program_date_time_millis"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ae:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1281
    :cond_4d
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->af:I

    if-eq v0, v8, :cond_4e

    .line 1282
    const-string/jumbo v0, "sampled_bitrate"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->af:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 1284
    :cond_4e
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ag:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4f

    .line 1285
    const-string/jumbo v0, "buffering_duration_millis"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ag:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 1287
    :cond_4f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/Boolean;Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 829
    iput-object p1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->F:Ljava/lang/String;

    .line 830
    iput-object p2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->H:Ljava/lang/String;

    .line 831
    iput-wide p3, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->G:J

    .line 832
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->I:I

    .line 833
    iput-object p6, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->N:Ljava/lang/Boolean;

    .line 834
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->P:J

    .line 835
    return-void

    .line 832
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 834
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 845
    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 847
    :cond_0
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_1
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    if-eq v1, v6, :cond_2

    .line 853
    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 855
    :cond_2
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    if-eq v1, v6, :cond_3

    .line 857
    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 859
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 938
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 939
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 940
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 942
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 944
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget-boolean v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->j:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 950
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 955
    iget-boolean v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->r:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 960
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 966
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 967
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move v0, v3

    .line 947
    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 955
    goto :goto_1

    .line 969
    :cond_2
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->D:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 970
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->E:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 971
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 973
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->G:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 974
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->I:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->L:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 978
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->M:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 979
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->al:Lcom/twitter/library/scribe/aj;

    if-eqz v0, :cond_3

    .line 980
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 981
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->al:Lcom/twitter/library/scribe/aj;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/aj;->a(Landroid/os/Parcel;)V

    .line 985
    :goto_3
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->N:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/Boolean;)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 986
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->P:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 987
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 989
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->S:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->T:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->W:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->Z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 999
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aa:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1000
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->at:Lcom/twitter/library/scribe/NativeCardEvent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1001
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ai:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1003
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aj:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1004
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ak:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1005
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ab:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ac:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1007
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->an:Lcom/twitter/library/scribe/MomentScribeDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1008
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aq:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1009
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    sget-object v1, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 1010
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1012
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->au:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->av:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ax:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/Boolean;)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1015
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->aw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ao:Lcom/twitter/library/scribe/e;

    sget-object v1, Lcom/twitter/library/scribe/e;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 1017
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ap:Lcom/twitter/library/scribe/a;

    sget-object v1, Lcom/twitter/library/scribe/a;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 1018
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ay:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1019
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ar:Lcom/twitter/library/scribe/bb;

    sget-object v1, Lcom/twitter/library/scribe/bb;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 1020
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1021
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ae:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1022
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->af:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeItem;->ag:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1024
    return-void

    .line 983
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_3
.end method
